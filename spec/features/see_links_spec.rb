require 'capybara/rspec'

feature 'Viewing links' do
  scenario 'the user can see a list of links' do
  visit('/')
  expect(page).to have_content "https://www.google.co.uk"
  expect(page).to have_content "http://www.bbc.co.uk/news"
  expect(page).to have_content "http://www.pitchero.com/clubs/dulwichhamlet"
  end
end
