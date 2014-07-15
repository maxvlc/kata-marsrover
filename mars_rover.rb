require './compass'

class MarsRover

	DEFAULT_POSITION = [0,0]
	DEFAULT_ORIENTATION = "N"
	STEP = 1
	MAXIMUM_GRID_X = 20
	MAXIMUM_GRID_Y = 20
	X = 0
	Y = 0
	@rover_position
	@rover_orientation

	def initialize()
		@rover_position = DEFAULT_POSITION
		@rover_orientation = DEFAULT_ORIENTATION
	end

	def where_are_you
		@rover_position
	end

	def where_is_your_orientation
		@rover_orientation
	end

	def move(order)
		@rover_position[0]+=STEP if order == "f"
		@rover_position[0]-=STEP if order == "b"
		@rover_position
	end

	def turn(order)
		@rover_position[1]+=STEP if order == "l"
		@rover_position[1]-=STEP if order == "r"
		@rover_orientation="N"
		@rover_position
	end

	def wrapping(position_x,position_y)
		@rover_position=[position_x,position_y]
		@rover_position[0]=DEFAULT_POSITION[0] if @rover_position[0]>MAXIMUM_GRID_X
		@rover_position[1]=DEFAULT_POSITION[1] if @rover_position[1]>MAXIMUM_GRID_Y
		@rover_position
	end
end