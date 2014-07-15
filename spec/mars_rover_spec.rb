require './mars_rover'

describe "The Mars Rover" do
	x = 0
	y = 0
	direction = "N"
	position = [x,y]
	commands =[]

	it "has an initial starting point and a direction" do
		expect(MarsRover.new.ready(position,direction)).to eq ("Expecting order")
	end

	it "receives a character array of commands" do
		expect(MarsRover.new.order(commands)).to eq ("Order Received")
	end
end