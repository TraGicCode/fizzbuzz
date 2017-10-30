require "spec_helper"

RSpec.describe Fizzbuzz do
  it "has a version number" do
    expect(Fizzbuzz::VERSION).not_to be nil
  end

  describe ".run" do
    let(:result) { Fizzbuzz::run }
    it "returns an array" do
      expect(result).to be_a(Array)
    end

    it "returns a non-empty array" do
      expect(result).to_not be_empty
    end

    it "returns an array of 100 items" do
      expect(result.length).to eq(100)
    end

    it "should contain no multiples of 3" do
      result.each do |number|
        expect(number % 3).to_not eq(0)
      end
    end

    [3, 6, 9].each do |number|
      it "should return fizz for the #{number}nth element" do
        expect(result[number-1]).to eq("fizz")
      end
    end

    it "should contain no multiples of 5" do
      result.each do |number|
        expect(number % 5).to_not eq(0)
      end
    end

    [5, 10, 20].each do |number|
      it "should return buzz for the #{number}nth element" do
        expect(result[number-1]).to eq("buzz")
      end
    end

    [15, 30, 45].each do |number|
      it "should return fizzbuzz for the #{number}nth element" do
        expect(result[number-1]).to eq("fizzbuzz")
      end
    end
  end
end
