require './app.rb'
require 'capybara'

describe Battle do


 it 'expects names of the players to be displayed' do
   visit ('/')
   fill_in('player1', :with => 'John')
   fill_in('player2', :with => 'Paul')
   click_button('Submit')
   expect(page).to have_content('John vs. Paul')
 end

end
