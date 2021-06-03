class Person
  attr_reader :name, :experience
  def initialize(name, experience)
    @name = name
    @experience = experience
    @specialties = []
  end
end
