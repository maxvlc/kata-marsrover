require './mars_rover'
require './compass'

describe "The Mars Rover" do

	DEFAULT_POSITION = [0,0]
	DEFAULT_DIRECTION = "N"

	it "has an initial starting point and a direction" do
		expect(MarsRover.new.where_are_you).to eq DEFAULT_POSITION
		expect(MarsRover.new.where_is_your_orientation).to eq DEFAULT_DIRECTION
	end

	it "moves 1 unit with an f command and -1 with b" do
		final_position = [1,0]
		expect(MarsRover.new.move("f")).to eq (final_position)
		expect(MarsRover.new.move("b")).to eq DEFAULT_POSITION
	end

	it "moves 1 unit to left with an l command and move right with r" do
		final_position = [0,1]
		expect(MarsRover.new.turn("l")).to eq (final_position)
		expect(MarsRover.new.turn("r")).to eq DEFAULT_POSITION
	end

	it "wrapping from one edge of the grid to another X grid" do
		final_x = 21
		final_y = 3
		final_position = [0,3]
		expect(MarsRover.new.wrapping(final_x,final_y)).to eq final_position
	end

	it "wrapping from one edge of the grid to another Y grid" do
		final_x = 3
		final_y = 21
		final_position = [3,0]
		expect(MarsRover.new.wrapping(final_x,final_y)).to eq final_position
	end

	it "knows where its looking" do
		expect(Compass.new.direction).to eq (:N)		
	end

	it "knows how to turn left" do
		compass = Compass.new
		compass.left
		expect(compass.direction).to eq (:W)
	end

	it "can turn 360o to the left" do
		compass = Compass.new
		compass.left
		compass.left
		compass.left
		compass.left
		expect(compass.direction).to eq (:N)
	end

	it "knows how to turn right" do
		compass = Compass.new
		compass.right
		expect(compass.direction).to eq (:E)
	end

	it "can turn 360o to the right" do
		compass = Compass.new
		compass.right
		compass.right
		compass.right
		compass.right
		expect(compass.direction).to eq (:N)
	end
end