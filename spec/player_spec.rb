require 'player'

describe Player do
  it ' Has a name ' do
    player1 = Player.new('Angron')
    expect(player1.name).to eq "Angron"
  end
end
