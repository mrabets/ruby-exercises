class Hangman
	attr_accessor :secret, :attempt_count, :letters

	def initialize(secret=get_secret_word, attempt_count=10)
		@secret = secret
		@attempt_count = attempt_count
		@letters = Hash.new(false)
	end

	def start_game
		loop do
			@secret.each_char { |letter| if @letters[letter] then print letter else print '*' end }
			attempt = get_correct_letter
			@letters[attempt] = @secret.include?(attempt) ? true : false 
		
			break if win?

			@attempt_count -= 1
		
			break if lose?
		
			puts "#{@attempt_count} attempts left"
		end
	end

	def get_secret_word
		lines = File.readlines('5desk.txt')
		data_array = lines.select { |word| word.length.between?(5, 12) }
		random_index = rand data_array.length
		data_array[random_index].downcase
	end
	
	def get_correct_letter
		loop do
			print "\nEnter a letter: "
			attempt = gets.chomp
	
			if attempt.size != 1 || !attempt.match?(/[[:alpha:]]/)
				puts 'Must be a letter'
				next
			end
	
			if @letters.has_key? attempt
				puts 'This letter already exist'
				next
			end
	
			return attempt
		end
	end

	def win?
		if @secret.chars.all? { |letter| @letters.keys.to_s.include?(letter) }
			puts '=YOU WIN='
			return true
		end

		false
	end

	def lose?
		if @attempt_count < 1
			puts "=YOU LOSE="
			return true
		end

		false
	end
end

hangman = Hangman.new
hangman.start_game
