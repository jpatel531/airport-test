class Airport

	def planes
		@planes ||= []
	end

	def plane_count
		planes.count 
	end

	def receive(plane) 
		planes << plane
	end

	def release(plane)
		planes.delete(plane)
	end

end