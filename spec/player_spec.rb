require 'player'

describe Player do

  it ' Has a name ' do
    player1 = Player.new('Angron')
    expect(player1.name).to eq "Angron"
  end

  it 'returns the hit points' do
    player1 = Player.new('Angron')
    expect(player1.hit_points).to eq 60
  end

  it 'returns the hit points' do
    player1 = Player.new('Angron')
    expect(player1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end

  it 'damages the player' do
    player1 = Player.new('Angron')
    player2 = Player.new('Guilliman')
    expect(player2).to receive(:receive_damage)
    player1.attack(player2)
  end

   it 'reduces the player hit points' do
     player1 = Player.new('Angron')
     player2 = Player.new('Guilliman')
     expect { player1.receive_damage }.to change { player1.hit_points }.by(-10)
   end
end
