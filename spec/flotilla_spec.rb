require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do
  it 'exists' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla).to be_a(Flotilla)
  end

  it 'has attributes' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla.designation).to eq( 'Seventh Flotilla')
  end

  it 'can add ships' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    odyssey = Spacecraft.new({name: 'Odyssey', fuel: 300})

    seventh_flotilla.add_ship(@daedalus)
    seventh_flotilla.add_ship(@odyssey)


    expect(seventh_flotilla.ships).to eq([@daedalus, @odyssey])
  end

  it 'can add personnel' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    @kathy = Person.new('Kathy Chan', 10)
    @polly = Person.new('Polly Parker', 8)
    @rover = Person.new('Rover Henriette', 1)
    @sampson = Person.new('Sampson Edwards', 7)

    seventh_flotilla.add_personnel(@kathy)
    seventh_flotilla.add_personnel(@polly)
    seventh_flotilla.add_personnel(@rover)
    seventh_flotilla.add_personnel(@sampson)

    expect(seventh_flotilla.personnel).to eq([@kathy, @polly, @rover, @sampson])

  end
end
