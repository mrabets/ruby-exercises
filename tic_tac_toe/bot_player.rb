class BotPlayer < Player
  def move
    loop do
      index = rand 9

      if game_party.grid[index] == '·'
        game_party.grid[index] = mark
        break
      end
    end
  end
end
