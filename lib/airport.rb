require_relative 'weather_conditions.rb'

class Airport

	include WeatherConditions

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

	def full?
		plane_count == capacity
	end

	def storm_checker
		raise StormyWeather.new("Too stormy bro") if weather_condition == "stormy"
	end

	def capacity_checker
		raise AtFullCapacity.new("We're full bro") if full?
	end

	def can_receive?(plane) 
		capacity_checker
		storm_checker
	end

	def can_release?(plane)
		storm_checker
	end

end

class AtFullCapacity < Exception ; end
class StormyWeather < Exception ; end