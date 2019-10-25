class SearchController < ApplicationController
  def index
    @poro = application_poro() #lives in app con
  end
end
