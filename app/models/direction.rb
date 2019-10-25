class Direction
	attr_reader :distance, :travel_time, :instructions, :origin, :destination
	def initialize(data)
		@distance = data[:routes].first[:legs].first[:distance][:text]
		@travel_time = data[:routes].first[:legs].first[:duration][:text]
		@instructions = data[:routes].first[:legs].first[:steps].first[:html_instructions]
		@origin = data[:routes].first[:legs].first[:start_address]
		@destination = data[:routes].first[:legs].first[:end_address]
	end
end