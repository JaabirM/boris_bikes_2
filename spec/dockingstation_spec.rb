require 'dockingstation'

describe DockingStation do
  docking_station = DockingStation.new
  it "releases a bike" do
    expect(docking_station).to respond_to(:release_bike)
  end

  it "docks a bike" do
    expect(docking_station).to respond_to(:dock_bike)
  end

  it "does it say hello?" do
    expect(docking_station.say_hello).to eq("This docking station says hello!")
  end

end