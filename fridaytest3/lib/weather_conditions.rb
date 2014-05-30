module WeatherConditions

	def sunny?
		rand <= 0.9
	end

	def stormy?
		rand > 0.9
	end

end