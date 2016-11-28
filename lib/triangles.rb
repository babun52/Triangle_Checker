class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:check_triangle) do
    if @side1 == @side2 and @side2 == @side3
      'equilateral'
    elsif @side1 == @side2 or @side1 == @side3 or @side2 == @side3
      'isosceles'
    elsif @side1 != @side2 and @side2 != @side3 and @side1 != @side3
      'scalene'    
    end
  end
end
