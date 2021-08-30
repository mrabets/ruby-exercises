class Player
  attr_reader :name, :mark, :game_party

  def initialize(name, mark, game_party)
    @name = name
    @mark = mark
    @game_party = game_party
  end
end
