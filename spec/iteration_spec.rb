require 'spec_helper'

array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]
array_2 = [[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]]
array_3 = [[86262, 58115], [22558, 97709], [66236, 28056], [25992, 81375], [11248, 56789], [42783, 27353], [70796, 63432], [53234, 63058], [72316, 8675309]]


describe "Write a method called \"join_ingredients\"." do
  describe "It is given an Array of 2-element Arrays" do
    it "returns an Array of Strings of the form \"I love element1 and element2 on my pizza\"" do
      expect(join_ingredients(array_1)).to eq([
        "I love pepperoni and sausage on my pizza",
        "I love green olives and green peppers on my pizza",
        "I love onions and pineapple on my pizza"
      ])
    end
  end
end

describe "Write a method called \"find_greater_pair\"" do
  describe "that takes in argument of an Array of Arrays containing pairs of numbers" do
    it "returns the larger numbers from each pair in a new Array" do
      expect(find_greater_pair(array_2)).to eq([-1, 30, 0, 14, 19])
    end
  end
end

describe "Write a method called \"total_even_pairs\"" do
  describe "that takes in argument of an Array of Arrays containing pairs of numbers" do
    it "returns the sum of the evens found in both-even pair" do
      expect(total_even_pairs(array_3)).to eq(344812)
    end
  end
end
