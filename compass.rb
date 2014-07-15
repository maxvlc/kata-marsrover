class Compass

	OPTIONS = [:N,:E,:S,:W]

	def initialize
		@pointer = 0
	end
	
	def direction
		OPTIONS[@pointer]
	end

	def left
		set_pointer (@pointer-1)
	end

	def right
		set_pointer (@pointer+1)
	end

	private

	def set_pointer (value)
		value = 3 if value < 0
		@pointer = value
		value = 0 if value > 3
		@pointer = value
	end
end