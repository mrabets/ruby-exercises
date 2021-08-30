def get_number
  print 'Enter attempt number (ex. 1234): '
  attempt = gets.chomp

  if attempt.size != 4
    puts "Size isn't 4"
    get_number
  end

  if attempt.to_i.to_s != attempt
    puts 'Should be only numbers'
    get_number
  end

  if attempt.size != attempt.chars.uniq.size
    puts "Shouldn't be duplicates"
    get_number
  end

  attempt
end

secret = (1..9).to_a.shuffle.map(&:to_s)[0..3]

loop do
  attempt = get_number.chars

  if attempt == secret
    puts 'You win'
    break
  end

  bulls = secret.zip(attempt).inject(0) { |count, (a, b)| a == b ? count += 1 : count }
  cows = (secret & attempt).size - bulls

  puts "Bulls: #{bulls}"
  puts "Cows: #{cows}"
end
