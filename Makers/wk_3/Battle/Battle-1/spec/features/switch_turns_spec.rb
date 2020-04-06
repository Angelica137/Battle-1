feature 'current_turn' do
  scenario 'at game start users can see whose turn it is' do
    sign_in_and_play
      expect(page).to have_content 'Dave, attack!'
  end

  scenario 'after Player_1 attacks, Player_2 goes' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content "Dave, attack!"
    expect(page).to have_content "Mittens, go!"
  end

end