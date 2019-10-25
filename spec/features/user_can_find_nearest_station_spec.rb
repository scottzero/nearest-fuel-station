require 'rails_helper'
#
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Distance
# - Access Times
#
# I should also see:
# - the distance of the nearest station
# - the travel time from Turing to that fuel station (should be 0.1 miles)
# - The HTML direction instructions to get to that fuel station
#   "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"

describe "user can select a location from the drop down,click find nearest station" do
  scenario "is redirected to /search and can see search results " do
    # As a user
    # When I visit "/"
    visit '/'
    # And I select "Turing" form the start location drop down (Note: Use the existing search form)
    select 'Turing', from: "location"
    # And I click "Find Nearest Station"
    click_on "Find Nearest Station"
    # Then I should be on page "/search"
    expect(current_path).to eq(search_path)
    # Then I should see the closest electric fuel station to me.

  end
end
