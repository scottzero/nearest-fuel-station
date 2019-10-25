class SearchController < ApplicationController
  def index
    @poro = application_poro()
    #method call from appcation controller
    # binding.pry
  end

end
