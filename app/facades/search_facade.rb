class SearchFacade

	def initialize(location)
		@location = location
	end

	def google_service
		GoogleApiService.new
	end

	def nrel_service
		NrelApiService.new
	end

	def nearest_station_data
		nrel_service.nearest_elec_station(@location)
	end

	def nearest_station
		Station.new(nearest_station_data)
	end

	def direction_data
		google_service.directions(@location, nearest_station.address)
	end

	def direction
		Direction.new(direction_data)
	end
end