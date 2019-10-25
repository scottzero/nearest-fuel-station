require 'pry'
class GoogService
  # origin=24+Sussex+Drive+Ottawa+ON
   # 1331 17th St LL100, Denver, CO 80202
  # origin=1331+17th+Street+Denver+CO Turing
  def service
    conn = Faraday.new(:url => 'https://maps.googleapis.com/maps/api/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      faraday.headers["key"] = ENV["GOOGLE_API_KEY"]
    end
  response = conn.get("directions/json?origin=1331+17th+Street+denver+CO&destination=1800+Larimer+Street+denver+CO&key=AIzaSyBWIgzxkg_oJ1p5wquKPaSTxEYLPAU8m9E")
  response_body = JSON.parse(response.body, symbolize_names: true)
  # binding.pry
  #successfully hitting the api
  # 1800+Larimer+Street+denver+CO, elec fuel, got from post, need to make dynamic,
  end
end
