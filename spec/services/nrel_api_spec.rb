require 'rails_helper'

RSpec.describe "NREL api service" do
    it "shows closest station from origin" do
        service = NrelApiService.new
        data = service.nearest_turing_elec_station
		station = data[:fuel_stations].first

		expect(station).to have_key(:station_name)
		expect(station).to have_key(:street_address)
		expect(station).to have_key(:fuel_type_code)
		expect(station).to have_key(:access_days_time)
    end
end