require "spec_helper"

feature "Widget management" do
  scenario "User creates a new widget" do
    visit "/checkins"
    click_link "New Checkin"

    fill_in "Name", with: "under the stairs"
    fill_in "Address", with: "604 arizona santa monica"
    click_button "Create Checkin"

    page.should have_text('Checkin was successfully created.')
  end
end

