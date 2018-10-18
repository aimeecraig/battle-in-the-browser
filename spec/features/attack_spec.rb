feature 'Attacking' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'Player 2 attacks Player 1 after a turn' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Next turn'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end
end
