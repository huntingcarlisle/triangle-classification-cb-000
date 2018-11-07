class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @test_one = (@side_one == @side_two)
    @test_two = (@side_two == @side_three)
    @test_three = (@side_one == @side_three)
  end
  
  def kind
    if @test_one && @test_two
      return :equilateral
    elsif @test_one || @test_two || @test_three
      return :isosceles
    else
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
