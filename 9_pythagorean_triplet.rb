=begin
  A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

  a^2 + b^2 = c^2
  For example, 32 + 42 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
=end

def pythagorean_triplet?(a, b, c)
  (a*a) + (b*b) == (c*c)
end

def find_pythagorean_triplets(max)
  triplets = []
  
  1.upto(max) do |a|
    1.upto(max) do |b|
      1.upto(max) do |c|
        if(a+b+c == 1000)
          triplets << [a,b,c].sort if pythagorean_triplet?(a,b,c)
        elsif (a+b+c > 1000)
          break
        end
      end
    end
  end

  triplets.uniq
end

require 'test/unit'
class PythagoreanTripletTest < Test::Unit::TestCase
  def test_pythagorean_triplet
    assert pythagorean_triplet?(3,4,5)
  end

  def test_find_pythagorean_triplet_product
    assert_equal 5, find_pythagorean_triplets(1000).flatten.inject(1){|product,n| product *= n}
  end
end
