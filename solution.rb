mathdojo_spec.rb:

require 'rails_helper'
describe Mathdojo do
 it "adds" do
  expect(Mathdojo.new.add(3,8).result).to eq(12)
 end
 it "adds arrays" do
  expect(Mathdojo.new.add([1,3,5,9]).result).to eq(19)
 end
 it "subtracts" do
  expect(Mathdojo.new.subtract(3,4).result).to eq(-6)
 end
 it "subtracts arrays" do
  expect(Mathdojo.new.subtract([2,5]).result).to eq(-6)
 end
  it "multiplies arrays" do
  expect(Mathdojo.new.multiply_by_the_sum([2,5])).to eq(7)
 end
 it "resets" do
 expect(Mathdojo.new.reset).to eq(1)
 end
end

---------
mathdojo.rb


class Mathdojo
 attr_accessor :result
 def initialize
  @result = 1
 end
 def add *numbers
  @result += numbers.flatten.inject(:+)
  return self
 end
 def subtract *numbers
  @result -= numbers.flatten.inject(:+)
  return self
 end
 def multiply_by_the_sum *numbers
  @result *= numbers.flatten.inject(:+)
 end

 def reset
  @result = 1
 end
end