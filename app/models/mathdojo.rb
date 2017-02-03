
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