require './app.rb'
require 'capybara'
require 'features/web_helpers'

describe Battle do

 it 'expects names of the players to be displayed' do
   sign_in_and_play
   expect(page).to have_content('John: 50HP vs. Paul: 50HP')
 end

 it 'displays hit points' do
   sign_in_and_play
   expect(page).to have_content('Paul: 50HP')
 end

 it 'attacks player 2 with confirmation' do
   sign_in_and_play
   click_button 'Attack'
   expect(page).to have_content('Paul is being attacked!')
 end

  it "reduces Player 2's HP by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Paul: 40HP')
  end

  it "switches turns between players & attack player 1" do
    sign_in_and_play
    click_button 'Switch Turns'
    click_button 'Attack'
    expect(page).to have_content('John is being attacked!')
  end

end
