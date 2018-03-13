require 'capybara/rspec'

feature 'Viewing links' do
  scenario 'the user can see a list of links' do
  visit('/')
  expect(page).to have_content "http://www.google.com"
  expect(page).to have_content "http://www.makersacademy.com"
  expect(page).to have_content "http://www.facebook.com"
  end
end
