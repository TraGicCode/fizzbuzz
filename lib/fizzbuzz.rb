require "fizzbuzz/version"

module Fizzbuzz
  def self.run
    result = []
    1.upto(100) do |number|
      if self.check_multiple(number, 5) && self.check_multiple(number, 3)
        result.push("fizzbuzz")
      elsif self.check_multiple(number, 5)
        result.push("buzz")
      elsif self.check_multiple(number, 3)
        result.push("fizz")
      else
        result.push(number)
      end
    end
    result
  end

  def self.check_multiple(target, multiple)
    (target % multiple) == 0
  end
end
