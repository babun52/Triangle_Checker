require('rspec')
require('pry')
require('triangles')

describe('Triangle') do
  describe('#check_triangle') do
    it('will return equilateral if all sides are equal') do
      new_triangle = Triangle.new(2,2,2)
      expect(new_triangle.check_triangle()).to(eq('equilateral'))
    end
    it('will return isosceles if exactly 2 sides are equal') do
      new_triangle = Triangle.new(2,2,3)
      expect(new_triangle.check_triangle()).to(eq('isosceles'))
    end
    it('will return scalene if no sides are equal') do
      new_triangle = Triangle.new(2,4,5)
      expect(new_triangle.check_triangle()).to(eq('scalene'))
    end
    it('will return NOT a triangle if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side') do
      new_triangle = Triangle.new(2,4,6)
      expect(new_triangle.check_triangle()).to eq('NOT a triangle')
    end
  end
end
