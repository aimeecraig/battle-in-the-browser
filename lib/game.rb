class Game
  attr_reader :current_player, :opposing_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_2
    @opposing_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def swap_player
    @current_player, @opposing_player = @opposing_player, @current_player
  end

end
