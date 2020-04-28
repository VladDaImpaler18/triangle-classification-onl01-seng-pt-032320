require 'pry'
class Triangle
attr_accessor :a, :b, :c  
  
  def initialize(side1,side2,side3)
    @a = side1
    @b = side2
    @c = side3
  end

  def check
    [@a,@b,@c].uniq.count
  end
  
  def valid?
    raise TriangleError if [@a,@b,@c].any?{|side| side <= 0 }
    raise TriangleError if (@a + @b <= @c) || (@a + @c <= @b) || (@b + @c <= @a)
    true
  end
  
  def kind
    #binding.pry
    if valid?
      return :equilateral if check == 1
      return :isosceles if check == 2
      return :scalene if check == 3
    end
  end
  
  class TriangleError < StandardError
    
  end
end
