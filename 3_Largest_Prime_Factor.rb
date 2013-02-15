=begin
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
=end


TESTS = [[13195,29], [600851475143, 6857]]

def prime?(number)
  
  if number < 2
    return false
  else
    
    (2...Math.sqrt(number)).each do |n|
      return false if (number % n).zero?
    end
    
  end
  
  true
end

def factors(number)
  factors = [1, number]
  
  (2..Math.sqrt(number)).each do |n|
    factors << n if (number % n).zero?
  end
  
  factors.sort
end

def prime_factors(number)
  factors(number).keep_if{|n| prime?(n)}
end

def largest_prime_factor(number)
  prime_factors(number).max
end


require 'test/unit'
class LargestPrimeFactorTest < Test::Unit::TestCase

  def test_largest_prime_factors
    TESTS.each do |test_details|
      start_time = Time.now
      assert_equal test_details[1], largest_prime_factor(test_details[0])
      puts "Time for #{test_details[0]} : #{Time.now - start_time}"
    end
  end

  def test_prime_factors
    assert_equal [5,7,13,29], prime_factors(TESTS[0][0])
  end

  def test_prime
    assert !prime?(1)
    assert prime?(5)
    assert !prime?(8)
  end
end
