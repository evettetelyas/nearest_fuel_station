class NrelApiService

  def nearest_turing_elec_station
		data = conn.get("nearest.json") do |req|
      req.params[:fuel_type] = 'ELEC'
      req.params[:latitude] = 39.750839
      req.params[:longitude] = -104.996560
      req.params[:limit] = 1
		end
		JSON.parse(data.body, symbolize_names: true)
	end

  def nearest_elec_station(address)
		data = conn.get("nearest.json") do |req|
      req.params[:fuel_type] = 'ELEC'
      req.params[:location] = address
      req.params[:limit] = 1
		end
		JSON.parse(data.body, symbolize_names: true)
	end

	private
	def conn
		Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/") do |f|
      f.adapter  Faraday.default_adapter
      f.params[:api_key] = ENV["NREL_API_KEY"]
		end
	end
end