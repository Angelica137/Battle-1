feature 'See oponents points' do
  scenario 'Player 1 sees Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100 HP'
  end
end
