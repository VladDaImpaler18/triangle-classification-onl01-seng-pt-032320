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
    
  end
  
  def kind
    if valid?
      return :equilateral if check == 1
      return :isosceles if check == 2
      return :scalene if check == 3
    end
  end
  
  class TriangleError < StandardError
    
  end
end
