class Players
  def initialize(name)
    @name = name
    lives = 3
  end
end

player_1 = Players.new('Andre')
p player_1