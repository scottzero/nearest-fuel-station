#station poro to get object data for view
class Station
  attr_reader :name, :address, :fuel_type, :distance, :access_times
  def initialize(search_data)
    @name = search_data[:name]
    @address = search_data[:address]
    @fuel_type = search_data[:fuel_type]
    @distance = search_data[:distance]
    @access_times = search_data[:access_times]
  end
end
