class Station
	attr_reader :name, :address, :fuel_type
	def initialize(data)
		@name = data[:fuel_stations].first[:station_name]
		@address = data[:fuel_stations].first[:street_address]
		@fuel_type = data[:fuel_stations].first[:fuel_type_code]
	end
end