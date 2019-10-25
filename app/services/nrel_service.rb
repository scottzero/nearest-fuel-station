require 'pry'
class NrelService
  def service(zip)
    conn = Faraday.new(:url => 'https://developer.nrel.gov/api/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      faraday.params["api_key"] = ENV["NREL_API_KEY"]
      end
  response = conn.get("alt-fuel-stations/v1/nearest.json?fuel_type=ELEC,LPG&location=#{zip}&radius=5.0&access=public&api_key=fPi2TIjWQQpNCEekjNlLkfECjD2lyyQRC2RhPYth")
  parsed_body = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  # binding.pry
  end
end
#
# https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=fPi2TIjWQQpNCEekjNlLkfECjD2lyyQRC2RhPYth&format=JSON
#turing zip 80202
