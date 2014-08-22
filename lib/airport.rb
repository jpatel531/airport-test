require_relative 'weather_conditions'
require_relative 'air_traffic_control'

class Airport


	include AirTrafficControl

	attr_accessor :capacity

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def capacity
		@capacity ||= 15
	end

	def planes
		@planes ||= []
	end

	def plane_count
		planes.count 
	end


end
