require 'rspec'

class SumOfTen
  attr_reader :input_arr

  def initialize
    @input_arr = make_input_arr
  end

  def make_input_arr
    arr = []
    (-50).upto(50) do |x|
      (-50).upto(50) do |y|
        arr << [x,y]
      end
    end
    arr
  end

  def make_pairs
    input_arr.select { |a| a.reduce(:+) == 10 }
  end
end

RSpec.describe "SumOfTen#make_pairs" do
  it 'finds all pairs that make sum of 10' do
    SumOfTen.new.make_pairs.each do |result|
      expect(result[0] + result[1]).to eq(10)
    end
  end
end
