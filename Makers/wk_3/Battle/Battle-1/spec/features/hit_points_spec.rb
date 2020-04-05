feature 'See oponents points' do
  scenario 'Player 1 sees Player 2 HP' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens: 100 HP'
  end
end
