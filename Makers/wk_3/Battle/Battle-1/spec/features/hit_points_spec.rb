feature 'See oponents points' do
  scenario 'Player 1 sees Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100 HP'
  end
end

feature 'Attack oponent' do
  scenario 'Player 1 attacks Player 2 and sees confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You attacked Mittens!'
  end

  feature 'Attacking reduces oponents HP' do
    scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).not_to have_content 'Mittens: 60HP'
      expect(page).to have_content 'Mittens: 50HP'
    end
  end

end