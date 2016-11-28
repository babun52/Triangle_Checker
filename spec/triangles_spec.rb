require('rspec')
require('pry')
require('triangles')

describe('Triangle') do
  describe('#check_triangle') do
    it('will return equilateral if all sides are equal') do
      new_triangle = Triangle.new(2,2,2)
      expect(new_triangle.check_triangle()).to(eq('equilateral'))
    end
  end
end
