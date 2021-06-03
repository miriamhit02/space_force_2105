require './lib/person'
require './lib/spacecraft'

RSpec.describe Person do
  it 'exists' do
    kathy = Person.new('Kathy Chan', 10)

    expect(kathy).to be_a(Person)
  end

  it 'has attributes' do
    kathy = Person.new('Kathy Chan', 10)

    expect(kathy.name).to eq('Kathy Chan')
    expect(kathy.experience).to eq(10)
  end

  it 'can add specialties' do
    kathy = Person.new('Kathy Chan', 10)
    kathy.add_specialty(:astrophysics)
    kathy.add_specialty(:quantum_mechanics)

    polly = Person.new('Polly Parker', 8)
    polly.add_specialty(:operations)
    polly.add_specialty(:maintenance)

    rover = Person.new('Rover Henriette', 1)
    rover.add_specialty(:operations)
    rover.add_specialty(:maintenance)

    sampson = Person.new('Sampson Edwards', 7)
    sampson.add_specialty(:astrophysics)
    sampson.add_specialty(:quantum_mechanics)


    expect(kathy.specialties).to eq([:astrophysics, :quantum_mechanics])
    expect(polly.specialties).to eq([:operations, :maintenance])
    expect(rover.specialties).to eq([:operations, :maintenance])
    expect(sampson.specialties).to eq([:astrophysics, :quantum_mechanics])

  end
end
