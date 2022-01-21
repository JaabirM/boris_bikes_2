require 'dockingstation'

describe DockingStation do
  it "docks a bike" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes).to eq([bike])
  end

  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it "releases a bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end
  describe "#dock" do
    it "raises an error when full" do
       DockingStation::DEFAULT_CAPACITY.times do
         subject.dock_bike Bike.new
       end
      expect { subject.dock_bike Bike.new}.to raise_error("Docking station full")
    end
   end
   describe "initialization" do
      subject { DockingStation.new }
      let(:bike) { Bike.new }
      it "defaults capacity" do
        described_class::DEFAULT_CAPACITY.times do
        subject.dock_bike(bike)
      end
      expect{ subject.dock_bike(bike) }.to raise_error("Docking station full")
    end
  end
end