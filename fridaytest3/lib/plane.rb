class Plane

	attr_accessor :status

	def initialize
		@status = "flying"
	end

	def status
		@status
	end

	def land_in(airport)
		airport.receive self
		self.status = "landed"
	end

	def take_off_from(airport)
		airport.release self
		self.status = "flying"
	end
end