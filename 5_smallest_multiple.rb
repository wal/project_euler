=begin
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end



def smallest_multiple(starting_point, end_point)
  index = starting_point
  n = end_point
  begin
    index += 1
    if (n % index).zero?
      next
    else
      index = 0
      n +=end_pointe
    end
  end until(index == end_point)
  n
end


require 'test/unit'
class SmallestMultipleTest < Test::Unit::TestCase
  def test_smallest_multiple
    assert_equal 232792560, smallest_multiple(1,20)
  end
end
