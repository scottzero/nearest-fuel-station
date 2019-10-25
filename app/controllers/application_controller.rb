require "./app/services/goog_service"
require "./app/services/nrel_service"
require "./app/models/station"
require 'faraday'
class ApplicationController < ActionController::Base
  def application_poro
    nrel_obj = NrelService.new
    send_to_poro = nrel_obj.service(80202)#turing zip 80202
    poro = Station.new(send_to_poro)
  end
end
#user makes request from select turing
#need to
# test = GoogService.new
# test.service
#pingd the google api but didnt connect it properly, go back to refactor,didnt use
