require 'rails_helper'

RSpec.describe "google api service" do
    it "shows directions from destination to origin" do
        service = GoogleApiService.new
        data = service.directions("Turing school of software and design", "Seventeenth Street Plaza")
		route = data[:routes].first[:legs].first

		expect(route).to have_key(:distance)
		expect(route).to have_key(:duration)
		expect(route).to have_key(:steps)
		expect(route).to have_key(:start_address)
		expect(route).to have_key(:end_address)
    end
end