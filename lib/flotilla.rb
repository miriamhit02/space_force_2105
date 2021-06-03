class Flotilla
  attr_reader :designation,
              :ships,
              :personnel

  def initialize(info)
    @designation = info[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(spacecraft)
    @ships << spacecraft
  end

  def add_personnel(person)
    @personnel << person
  end

  def recomend_personnel(spacecraft)
    
  end
end
