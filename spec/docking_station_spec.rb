require 'docking_station'


describe DockingStation do
   it { expect(DockingStation.new(1)).to respond_to(:release_bike) }
   it { expect(DockingStation.new(1).release_bike(1)[0].class).to eq Bike }
   it { expect(DockingStation.new(1).bike_count[0].class).to eq Bike }
   it { expect { DockingStation.new(0).release_bike(1) }.to raise_error("There are no bikes at the docking station") }
   it { expect { DockingStation.new(DockingStation::DEFAULT_CAPACITY).dock_bike(1) }.to raise_error("Docking Station full.") }
end   
