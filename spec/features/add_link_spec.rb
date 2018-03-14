require 'capybara/rspec'

feature 'Adding links' do
  scenario 'the user can add a new link to the list of bookmarks' do
  visit('/')
  expect(page).to have_button "Add"
  end
end
