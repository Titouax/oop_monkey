class Monkey
  attr_accessor :name, :species, :foods_eaten

  def initialize(name, species)
    @name = name.capitalize
    @species = species
    @foods_eaten = []
  end

  def eat(food)
    @foods_eaten << food unless food.start_with?(/[aeiouy]/)
  end

  def introduce
    p "Hi ! My name is #{@name.capitalize}, I'm a #{@species} and I like to eat #{@foods_eaten}"
  end
end
