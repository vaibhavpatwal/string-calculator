
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 if string is empty" do
      expect(StringCalculator.new.add("")).to eq(0)
    end

    it "returns the number itself if string has a single number" do
      expect(StringCalculator.new.add("1")).to eq(1)
    end

    it "returns the sum of two numbers" do
      expect(StringCalculator.new.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple numbers" do
      expect(StringCalculator.new.add("1,2,3,4,5")).to eq(15)
    end

    it "returns the sum of multiple numbers if instead or , \n is given " do
      expect(StringCalculator.new.add("1\n2\n3,4,5")).to eq(15)
    end

  end
end
