require "./app/services/goog_service"
require "./app/services/nrel_service"
require "./app/models/station"
require 'faraday'
#user makes request from select turing
#need to
# test = GoogService.new
# test.service
test2 = NrelService.new
send_to_poro = test2.service(80202)
poro = Station.new(send_to_poro)
#pingd the google api but didnt connect it properly, go back to refactor,didnt use
#turing zip 80202

#moved to application controller
#only use for pry validations
