=begin
  The sum of the squares of the first ten natural numbers is,

  1^2 + 2^2 + ... + 10^2 = 385
  The square of the sum of the first ten natural numbers is,

  (1 + 2 + ... + 10)2 = 552 = 3025
  Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end


def sum_of_squares(start, finish)
  sum = 0
  (start..finish).each do |n|
    sum += (n * n)
  end  
  sum
end

def square_of_sums(start, finish)
  sum = 0
  (start..finish).each{|n| sum += n}
  sum * sum
end



require 'test/unit'
class SumSquareDifferenceTest < Test::Unit::TestCase
  def test_sum_square_difference
    sum_sqs = sum_of_squares(1, 100)
    assert_equal 338350, sum_sqs

    sqs_sum = square_of_sums(1, 100)
    assert_equal 25502500, sqs_sum

    puts sqs_sum - sum_sqs
    
  end
  
end
