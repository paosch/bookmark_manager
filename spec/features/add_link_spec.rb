require 'capybara/rspec'

feature 'Adding links' do
  scenario "the user can see 'Add' button in homepage" do
  visit('/')
  expect(page).to have_button 'Add'
  end

  scenario "the user can see 'Add link' message on add-url page" do
  visit('/')
  click_button 'Add'
  expect(page).to have_content 'Add link'
  end
end
