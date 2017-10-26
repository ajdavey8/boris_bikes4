require 'docking_station'

describe DockingStation do
   it { expect(DockingStation.new(1)).to respond_to(:release_bike) }
   it { expect(DockingStation.new(1).release_bike.class).to eq Bike }
   it { expect(DockingStation.new(1).bike_count).to eq 1 }
   it { expect { DockingStation.new(0).release_bike }.to raise_error("There are no bikes at the docking station") }
   it { expect { DockingStation.new(10).dock_bike }.to raise_error("DockingStation full.") }

end
