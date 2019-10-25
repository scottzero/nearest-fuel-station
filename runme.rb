require "./app/services/goog_service"
require "./app/services/nrel_service"
require 'faraday'
test = GoogService.new
test.service
# test2 = NrelService.new
# test2.service(80202)
#turing zip 80202
