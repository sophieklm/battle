require './app.rb'
require 'capybara'

describe Battle do

  it "checks homepage says 'Testing infrastructure working!'" do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

 it 'expects player1 to be John' do
   visit ('/players')
   fill_in('Player1', :with => 'John')
 end

end
