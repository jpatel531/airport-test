class Airport

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
		raise AtFullCapacity.new("We're full bro") if self.full?
		begin
		planes << plane
		rescue AtFullCapacity => e
			e.message
		end
	end

	def release(plane)
		planes.delete(plane)
	end

end

class AtFullCapacity < Exception ; end