require './pizza'

describe Pizza do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [Topping.new('mushrooms', vegetarian: true),
                  Topping.new('peperroni')]
      pizza = Pizza.new(toppings)
      expect(pizza.toppings).to eq(toppings)
    end
  end

  it 'defaults the toppings to cheese only, if the pizza has no toppings' do
  pizza = Pizza.new

  expect(pizza.toppings.size).to eq(1)
  expect(pizza.toppings.first.name).to eq('cheese')
  end

  it "checks if pizza is vegetarian" do
    toppings = [Topping.new('mushrooms', vegetarian: true),
                  Topping.new('peperroni')]
    pizza = Pizza.new(toppings)

    expect(pizza.vegetarian).to eq(false)

    pizza_2 = Pizza.new
    expect(pizza_2.vegetarian).to eq(true)
  end

end

describe Topping do
  describe '.initialize' do
    it 'sets the name of the topping' do
      topping = Topping.new('olives')
      expect(topping.name).to eq('olives')
    end
  end

  it "exists" do
    expect(Topping).to be_a(Class)
  end

  it "sets whether the topping is vegetarian" do
    topping = Topping.new('bell peppers', vegetarian: true)
    expect(topping.vegetarian).to eq(true)
  end

end
