class SearchController < ApplicationController
  def index
    @station = Station.new(params)
  end

end
