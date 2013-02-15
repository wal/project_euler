=begin
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

  What is the 10 001st prime number?
=end

def is_prime?(n)
  
  return false if n <= 1

  2.upto(Math.sqrt(n)) do |i|    
    return false if (n %i).zero?    
  end
  
  true
end

def nth_prime(n)
  primes = []
  
  i = 0
  begin
    primes << i if is_prime?(i)
    i += 1
  end until primes.size == n
  
  primes.last
end

require 'test/unit'
class PrimeTest < Test::Unit::TestCase
  def test_is_prime?
    assert !is_prime?(1)
    assert is_prime?(2)
    assert !is_prime?(4)    
  end
  
  def test_nth_prime
    assert_equal 13, nth_prime(6)
    assert_equal 104743, nth_prime(10001)
  end
end
