require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns volume 1000 for a package measuring 10/10/10') do
      test_parcel = Parcel.new(10, 10, 10, 5,5,1)
      expect(test_parcel.volume()).to (eq(1000))
    end
    it('returns 25 cost for v/w 10/10/10/5,5,1') do
      test_parcel = Parcel.new(10, 10, 10, 5,5,1)
      expect(test_parcel.volume_weight_cost()).to (eq(25))
    end
    it('returns 45 cost for v/w 20/10/10/5,5,1') do
      test_parcel = Parcel.new(20, 10, 10, 5,5,1)
      expect(test_parcel.volume_weight_cost()).to (eq(45))
    end
    it('returns 5 cost for distance 20/10/10/5,5,1') do
      test_parcel = Parcel.new(20, 10, 10, 5,5,1)
      expect(test_parcel.distance_cost()).to (eq(5))
    end
    it('returns cost for shipping option 20/10/10/5,5,1') do
      test_parcel = Parcel.new(20, 10, 10, 5,5,1)
      expect(test_parcel.option_cost()).to (eq(1))
    end
    it('returns cost for shipping option 20/10/10/5,5,1') do
      test_parcel = Parcel.new(20, 10, 10, 5,5,1)
      expect(test_parcel.cost_to_ship()).to (eq(51))
    end
  end
end
