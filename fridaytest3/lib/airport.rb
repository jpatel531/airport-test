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

	def receive(plane) 
		raise AtFullCapacity.new("We're full bro") if full?
		raise StormyWeather.new("Too stormy bro") if weather_condition == "stormy"
		begin
		planes << plane
		rescue AtFullCapacity => e
			e.message
		end
	end

	def release(plane)
		raise StormyWeather.new("Too stormy bro") if weather_condition == "stormy"
		begin
		planes.delete(plane)
		rescue StormyWeather => e 
			e.message
		end 
	end

end

class AtFullCapacity < Exception ; end
class StormyWeather < Exception ; end