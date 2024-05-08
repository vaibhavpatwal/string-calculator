
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
  end
end
