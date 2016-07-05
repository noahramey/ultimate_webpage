require('rspec')
require('triangle')

describe(Triangle) do
  describe("type") do
    it('returns "not a triangle" if the triangle is not a true triangle') do
      test_triangle = Triangle.new(1,2,8)
      expect(test_triangle.type()).to(eq("not a triangle"))
    end

    it('returns "equilateral triangle" if the triangle is a true triangle and all sides are equal') do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.type()).to(eq("equilateral triangle"))
    end

    it('returns "isosceles triangle" if the triangle is a true triangle and two sides are equal') do
      test_triangle = Triangle.new(2,2,1)
      expect(test_triangle.type()).to(eq("isosceles triangle"))
    end
    
    it('returns "scalene triangle" if the triangle is a true triangle and no sides are equal') do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.type()).to(eq("scalene triangle"))
    end
  end
end
