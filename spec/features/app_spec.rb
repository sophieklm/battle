require './app.rb'
require 'capybara'
require 'features/web_helpers'

describe Battle do


 it 'expects names of the players to be displayed' do
   sign_in_and_play
   expect(page).to have_content('John vs. Paul')
 end

 it 'displays hit points' do
   sign_in_and_play
   expect(page).to have_content('Paul: 2 HP')
 end

 it 'attacks player 2 with confirmation' do
   sign_in_and_play
   click_button 'Attack'
   expect(page).to have_content('You have attacked Paul')
 end

end
