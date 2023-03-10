require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:brownie) {Dessert.new("brownie",50,chef)}
  #create a instance that can be used throughout the entire spec 
  let(:chef) { double("Chef", name: "Chef")}
  #create a double "chef" instance that can be used independently of brownie 

  describe "#initialize" do
    it "sets a type" do 
      expect(brownie.type).to eq("brownie")
    end 
    it "sets a quantity" do 
      expect(brownie.quantity).to eq(50)
    end 

    it "starts ingredients as an empty array" do 
      expect(brownie.ingredients).to eq ([])
  end 

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("brownie","tons","chef")}.to raise_error(ArgumentError)
    end 
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include("chocolate")
      brownie.add_ingredient("chocolate")
      expect(brownie.ingredients).to include("chocolate")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      expect(brownie.ingredients).to eq(brownie.ingredients)
      brownie.add_ingredient("chocolate")
      brownie.add_ingredient("flour")
      brownie.mix!
      expect(brownie.mix!).to eq(brownie.ingredients.shuffle!)
    end 
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      brownie.eat(1)
      expect(brownie.quantity).to eq(49)
    end 

    it "raises an error if the amount is greater than the quantity" do 
      expect {brownie.eat(55)}.to raise_error("not enough left!")
    end 
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
    allow(chef).to receive(:titleize).and_return("Chef Chef the Great Baker")
    #allow allows the chef double to use the titleize method and get output 
    #titleize doesn't have to exist in the lib file to use allow. 
    expect(brownie.serve).to include("Chef")
    end 
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(brownie)
      #use receive to let chef use its bake method with our brownie instance
      #expect that the current method allows chef to call bake with "desert" brownie
      brownie.make_more
    end 
  end
end
