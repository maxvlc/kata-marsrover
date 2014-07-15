require './mars_rover'

describe "Mars Rover" do
	x = 0
	y = 0
	direction = "N"
	position = [x,y]

	it "has an initial starting point and a direction" do
		expect(MarsRover.new.ready(position,direction)).to eq ("Expecting order")
	end
end