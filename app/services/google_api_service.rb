class GoogleApiService

	def directions(origin, destination)
		data = conn.get("json") do |req|
      req.params[:origin] = origin
      req.params[:destination] = destination
		end
		JSON.parse(data.body, symbolize_names: true)
	end

	private
	def conn
		Faraday.new(url: "https://maps.googleapis.com/maps/api/directions/") do |f|
      f.adapter  Faraday.default_adapter
      f.params[:key] = ENV["GOOGLE_API_KEY"]
		end
	end
end