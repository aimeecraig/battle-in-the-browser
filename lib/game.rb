class Game
  attr_reader :current_player, :opposing_player

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @opposing_player = player_2
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

  def someone_lost?
    player_1.hit_points <= 0 || player_2.hit_points <= 0
  end

  def loser
    if player_1.hit_points <= 0
      player_1.name
    elsif player_2.hit_points <= 0
      player_2.name
    end
  end

end
