class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind # && side1 + side2 > side3 || side1 + side3 > side2 || side2 + side3 > side1
    if side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      raise TriangleError
    else

    else
      if side1 == side2 && side1 == side3 && side1 > 0 && side2 > 0 && side3 > 0
        :equilateral
      elsif side1 == side2 && side1 != side3 || side2 == side3 && side1 != side3 || side1 == side3 && side1 != side2 && side1 > 0 && side2 > 0 && side3 > 0
        :isosceles
      elsif side1 != side2 && side1 != side3 && side2 != side3 && side1 > 0 && side2 > 0 && side3 > 0
        :scalene
      end
    end
  end
  class TriangleError < StandardError
  end

end
