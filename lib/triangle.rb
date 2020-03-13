class Triangle
  # attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == @side_2 && @side_1 == @side_3
      return :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
      return :isosceles
    else
      return :scalene
    end
    if s1 >= (s2 + s3) || s2 >= (s1 + s3) || s3 >= (s1 + s2)
      raise TriangleError
    end

    if s1 <= 0 || s2 <= 0 ||s3 <= 0
      raise TriangleError
    end

    if s1 == nil || s2 == nil ||s3 == nil
      raise TriangleError
    end

  end

  class TriangleError < StandardError

  end
end
