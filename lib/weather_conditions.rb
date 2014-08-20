module WeatherConditions

	CHANCE_OF_SUN = 0.9

	def weather_condition
		rand <= CHANCE_OF_SUN ? "sunny" : "stormy"
	end
end