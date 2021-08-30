require_relative "tic_tac_toe"
require_relative "player"
require_relative "human_player"
require_relative "bot_player"


tic_tac_toe = TicTacToe.new

puts 'Enter first player name: '
name = gets.chomp
name = 'Player1' if name.empty?
player1 = HumanPlayer.new(name, 'x', tic_tac_toe)

puts "Play with bot? ('Y/n')"
if ['y', 'yes', ''].any?(gets.chomp.downcase)
  player2 = BotPlayer.new('Bot', '0', tic_tac_toe)
else
  puts 'Enter second player name: '
  name = gets.chomp
  name = 'Player2' if name.empty?
  player2 = HumanPlayer.new(name, '0', tic_tac_toe)
end

is_first_move = true

loop do
  tic_tac_toe.display_grid

  if tic_tac_toe.is_player_win?(player1)
    puts "#{player1.name} win!"; break
  elsif tic_tac_toe.is_player_win?(player2)
    puts "#{player2.name} win!"; break
  elsif tic_tac_toe.is_grid_full?
    puts "=DRAW="; break
  end
  
  if is_first_move 
    player1.move(); is_first_move = false
  else
    player2.move(); is_first_move = true
  end
end





