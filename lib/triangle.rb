class Triangle
  # attr_accessor :equilateral, :isosceles, :scalene

  def initialize(side_1, side_2, side_3)
    @triangles = []
    @triangles << side_1
    @triangles << side_2
    @triangles << side_3
  end

  def kind
    if @triangles.each {|side| side.even?}
      :equilateral
    end
    if @triangles.first(2) == @triangles.first(2)
      :isosceles


    end


  end

  # class TriangleError < StandardError
  #
  # end
end
