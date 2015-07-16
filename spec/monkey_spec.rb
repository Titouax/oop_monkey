require_relative '../lib/monkey'

describe Monkey do

  it "has a name" do
    adam = Monkey.new("Adam", "Spider Monkey")
    expect(adam.name).to eq("Adam")
  end

  it "has a species" do
    andy = Monkey.new("Andy", "Cool Monkey")
    expect(andy.species).to eq("Cool Monkey")
  end

  it "starts with no foods eaten" do
    adrian = Monkey.new("Adrian", "White-headed Capuchin")
    expect(adrian.foods_eaten).to eq([])
  end

  it "can eat a food (a string)" do
    matt = Monkey.new("Matt", "Mandrill")
    matt.eat("banana")
    matt.eat("PB&J")
    expect(matt.foods_eaten).to include("banana")
    expect(matt.foods_eaten).to include("PB&J")
  end

  it "can introduce itself with name, species, and foods eaten" do
    jesse = Monkey.new("Jesse", "Dusky Leaf Monkey")
    jesse.eat("cheeseburger")
    jesse.eat("bacon")

    expect(jesse.introduce).to include("Jesse")
    expect(jesse.introduce).to include("Dusky Leaf Monkey")
    expect(jesse.introduce).to include("cheeseburger")
    expect(jesse.introduce).to include("bacon")
  end


end