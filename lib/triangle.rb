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

    if side_1 >= (side_2 + side_3) || side_2 >= (side_1 + side_3) || side_3 >= (side_1 + side_2)
      raise TriangleError
    end

    # if side_1 <= 0 || side_2 <= 0 ||side_3 <= 0
    #   raise TriangleError
    # end
    #
    # if side_1 == nil || side_2 == nil ||side_3 == nil
    #   raise TriangleError
    # end

  end

  class TriangleError < StandardError

  end
end
