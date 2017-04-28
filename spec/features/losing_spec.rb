feature 'Losing' do
  scenario 'player reaches 0HP' do
    sign_in_and_play
    5.times {click_button 'Attack'}
    expect(page).to have_content 'Paul has lost!'
  end
end
