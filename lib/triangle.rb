class Triangle
  # attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)

    side_1 = side_1
    side_2 = side_2
    side_3 = side_3
  end

  def kind
    if (@side_1 == @side_2) && (@side_2 == @side_3)
       :equilateral
     elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
       :isosceles
       raise TriangleError
     end
     elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
       :scalene
     end
    raise TriangleError

    end

  class TriangleError < StandardError

  end
end
