require 'capybara/rspec'

feature 'Adding links' do
  scenario 'the user can see an empty box' do
    visit('/')
    expect(page).to have_selector('input')
  end

  scenario 'the user can see new link in homepage' do
    visit('/')
    fill_in('url', with: 'http://www.eldia.com')
    click_on 'Submit'
    expect(page).to have_content 'http://www.eldia.com'
  end
end
