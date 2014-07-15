class MarsRover

	DEFAULT_POSITION = [0,0]
	DEFAULT_ORIENTATION = :N
	STEP = 1
	@rover_position


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

	def turn (order)
		@rover_position[1]+=STEP if order == "l"
		@rover_position[1]-=STEP if order == "r"
		@rover_position
	end
end