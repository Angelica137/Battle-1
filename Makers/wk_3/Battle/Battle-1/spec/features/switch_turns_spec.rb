feature 'current_turn' do
  scenario 'at game start users can see whose turn it is' do
    sign_in_and_play
      expect(page).to have_content 'Dave, attack!'
  end
end