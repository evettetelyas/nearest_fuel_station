class SearchFacade

	# def google_service
	# 	GoogleApiService.new
	# end

	def nrel_service
		NrelApiService.new
	end

	def nearest_station_data
		nrel_service.nearest_turing_elec_station
	end

	def nearest_station
		binding.pry
		Station.new(nearest_station_data)
	end
end