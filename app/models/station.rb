#station poro to get object data for view
require 'pry'
class Station
  #need to read
  attr_reader :name, :address, :fuel_type, :distance, :access_times
  def initialize(search_data)
    @name = search_data[0][:id]
    @address = search_data[0][:street_address]
    @fuel_type = search_data[0][:fuel_type_code]
    @distance = search_data[0][:distance]
    @access_times = search_data[0][:access_days_time]
    # binding.pry
  end
end
