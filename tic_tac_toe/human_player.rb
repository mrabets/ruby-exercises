class HumanPlayer < Player
	def move
		loop do
			puts "\n#{@name} move"
			print 'Row: '; 
			row_pos = gets.to_i			
			print 'Column: '
			column_pos = gets.to_i
	
			index = row_pos * 3 + column_pos
	
			if game_party.grid[index] == '·'
				game_party.grid[index] = mark
				break
			else
				puts 'This cell is busy'
			end
		end	
	end
end