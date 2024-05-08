
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

    it "returns the sum of multiple numbers if instead of , \n is given" do
      expect(StringCalculator.new.add("1\n2\n3,4,5")).to eq(15)
    end

    it "raises an error for invalid input '1,\n'" do
      expect { StringCalculator.new.add("1,\n2") }.to raise_error(ArgumentError)
    end

    it "returns the sum of numbers with delimiter other then , or \n" do
      expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
    end

    it "raises an error for a single negative number" do
      expect { StringCalculator.new.add("-1") }.to raise_error(ArgumentError, "negative numbers not allowed -1")
    end

    it "raises an error for multiple negative numbers" do
      expect { StringCalculator.new.add("1,-2,3,-4,5") }.to raise_error(ArgumentError, "negative numbers not allowed -2,-4")
    end

  end
end
