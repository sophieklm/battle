require './app.rb'
require 'capybara'

describe Battle do
  it "checks homepage says 'Testing infrastructure working!'" do
    visit('/') 
    expect(page).to have_content('Testing infrastructure working!')
  end
end