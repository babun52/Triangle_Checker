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
      new_triangle = Triangle.new(2,2,8)
      expect(new_triangle.check_triangle()).to(eq('isosceles'))
    end
    it('will return scalene if no sides are equal') do
      new_triangle = Triangle.new(2,4,5)
      expect(new_triangle.check_triangle()).to(eq('scalene'))
    end
  end
end
