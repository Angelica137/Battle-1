feature 'See oponents points' do
  scenario 'Player 1 sees Player 2 HP' do
    visit('/play')
    expect(page).to have_content 'Mittens HP: 100'
  end
end