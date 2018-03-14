require 'capybara/rspec'

feature 'Adding links' do
  scenario "the user can see 'Add' button in homepage" do
  visit('/')
  expect(page).to have_button 'Add'
  end

  # scenario "the user can see 'Add link' message on add-url page" do
  # visit('/')
  # click_button 'Add'
  # expect(page).to have_content 'Add link'
  # end

  scenario 'the user can see an empty box' do
    visit('/')
    click_button 'Add'
    expect(page).to have_selector('input')
  end

  scenario 'the user can see new link in homepage' do
    visit('/')
    click_button 'Add'
    fill_in('url', with: 'http://www.eldia.com')
    click_on 'Submit'
    expect(page).to have_content 'http://www.eldia.com'
  end
end
