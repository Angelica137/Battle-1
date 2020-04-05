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
end