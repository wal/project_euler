def largest_palindrome(start_range, end_range)
  palindromes = []

  (start_range..end_range).each do |temp_start|
    (temp_start..end_range).each do |temp_end|
      product = temp_start * temp_end
      palindromes << product if is_palindrome?(product)
    end
  end
  
  palindromes.max
end


def is_palindrome?(number)
  digits = []
  
  begin
    digits << number % 10
    number /= 10
  end while number > 10

  digits << number if number > 0

  if digits.size > 1
    (0..digits.size).each do |n|
      return false unless digits[n].eql?(digits[(n *-1) -1])
    end
  else
    return true
  end
end



require 'test/unit'
class LargestPalindromeProductTest < Test::Unit::TestCase
  def test_is_palindrome
    assert is_palindrome?(5)
    assert is_palindrome?(313)
    assert is_palindrome?(9009)
    assert !is_palindrome?(1234)
  end

  def test_largest_palindrome
    assert_equal 906609, largest_palindrome(100, 999)
  end
end
