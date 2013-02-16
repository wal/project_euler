=begin
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
=end

def is_prime?(n)
  return false if n <= 1
  2.upto(Math.sqrt(n)) do |i|
    return false if(n%i).zero?
  end
  
  true
end

def summation_of_primes(max)
  sum = 0

  1.upto(max) do |n| 
    if is_prime?(n)
      sum += n
    end
  end

  sum
end


require 'test/unit'
class SummationOfPrimesTest < Test::Unit::TestCase
  def test_summation_of_primes
    assert_equal 142913828922, summation_of_primes(2000000)
  end

end
