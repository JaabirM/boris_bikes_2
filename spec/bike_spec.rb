require 'bike'

describe Bike do
  bike1 = Bike.new
  it "is it working?" do
    expect(bike1).to respond_to(:working?)
  end
end