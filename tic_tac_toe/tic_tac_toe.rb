LINES = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

class TicTacToe
	attr_accessor :grid

	def initialize
		@grid = Array.new(9, '·')
	end

	def display_grid
		puts '-----'
		@grid.each.with_index { |elem, index| print "#{elem} "; puts '' if [2, 5, 8].any? index }
		puts '-----'
	end

	def is_player_win?(player)
		LINES.each do |line|
			return true if line.all? { |pos| @grid[pos] == player.mark }
		end
		false
	end

	def is_grid_full?
		return false if @grid.any? {|elem| elem == '·'}
		true
	end
end
