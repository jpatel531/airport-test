class Plane

	attr_accessor :status

	def initialize
		@status = "flying"
	end

	def status
		@status
	end

	def land_in(airport)
		airport.can_receive? self
		begin
			airport.planes << self
			self.status = "landed"
		rescue AtFullCapacity => e
			e.message
		rescue StormyWeather => e 
			e.message
		end
	end


	def take_off_from(airport)
		airport.can_release? self
		begin		
			airport.planes.delete(self)
			self.status = "flying"
		rescue StormyWeather => e 
			e.message
		end 
	end
end