class SearchFacade

	def google_service
		GoogleApiService.new
	end

	def nrel_service
		NrelApiService.new
	end

	def nearest_station_data
		nrel_service.nearest_turing_elec_station
	end

	def nearest_station
		Station.new(nearest_station_data)
	end

	def direction_data
		google_service.directions_from_turing(nearest_station.name)
	end

	def direction
		Direction.new(direction_data)
	end
end