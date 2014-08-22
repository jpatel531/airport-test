require_relative 'exceptions'

module AirTrafficControl

	include WeatherConditions

	def full?
		plane_count == capacity
	end

	def storm_checker
		raise StormyWeather.new("Too stormy bro") if weather_condition == "stormy"
	end

	def capacity_checker
		raise AtFullCapacity.new("We're full bro") if full?
	end

	def can_receive_plane?
		capacity_checker
		storm_checker
	end

	def can_release_plane?
		storm_checker
	end

end