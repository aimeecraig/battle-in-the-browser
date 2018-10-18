require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player1, :hit_points => 10, :name => "Dave" }
  let(:player_2) { double :player2, :hit_points => 0, :name => "Mittens" }

  describe '#initialize' do
    it 'retrieves the first player' do
      expect(subject.player_1).to eq player_1
    end

    it 'retrieves the second player' do
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

  describe '#swap_player' do
    it 'switches the players' do
      subject.swap_player
      expect(subject.current_player).to eq player_2
    end
  end

  describe '#someone_lost?' do
    it "returns true if a player's HP is 0" do
      expect(subject.someone_lost?).to eq true
    end
  end

  describe '#loser' do
    it 'returns the name of the loser' do
      expect(subject.loser).to eq "Mittens"
    end
  end
end
