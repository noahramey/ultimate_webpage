require('rspec')
require('parcel')

describe(Parcel) do
  describe('volume') do
    it('returns the product of the sides of a parcel') do
      test_parcel = Parcel.new(2,4,1,20)
      expect(test_parcel.volume()).to(eq(8))
    end
  end

  describe('cost') do
    it('returns the cost of the parcel; equivalent to volume times weight dollars') do
      test_parcel = Parcel.new(2,4,1,20)
      expect(test_parcel.cost()).to(eq("$160.00"))
    end
  end
end
