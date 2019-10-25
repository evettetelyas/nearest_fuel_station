require 'rails_helper'

describe "user is shown info about the nearest station" do
  scenario "when selecting turing from the dropdown" do
    visit '/'
	select 'Turing', from: :location
	click_on "Find Nearest Station"

	expect(page).to have_css('.station')
	expect(page).to have_css('.station-name')
	expect(page).to have_css('.station-address')
	expect(page).to have_css('.station-fuel-type')
	expect(page).to have_css('.station-access-times')
	expect(page).to have_css('.directions')
	expect(page).to have_css('.directions-origin')
	expect(page).to have_css('.directions-distance')
	expect(page).to have_css('.directions-travel-time')
	expect(page).to have_css('.directions-instructions')
  end
end
