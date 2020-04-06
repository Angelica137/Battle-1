
feature 'Attack oponent' do
  scenario 'Player 1 attacks Player 2 and sees confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You attacked Mittens!'
  end
end

feature 'Attacking reduces oponents HP' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  feature 'Users can see their HP' do
    scenario 'While playeing users can see their HP' do
      sign_in_and_play
      expect(page).to have_content 'Dave: 60HP. Mittens: 60HP'
    end
  end
end
