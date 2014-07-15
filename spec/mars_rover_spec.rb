require '.mars_rover'

define "Mars Rover" do

	start = [x,y]
	direction = N

	it "has an initial starting point and a direction" do
		expect(MarsRover.new(start,direction)).to eq ("Expecting order")
	end
end