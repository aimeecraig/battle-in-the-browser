feature 'Hit points' do
  scenario "player 1 attacks player 2 and reduces player 2's hit points by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Mittens: 100HP'
    expect(page).to have_content 'Mittens: 90HP'
  end

  scenario "player 2 attacks player 1 and reduces player 1's hit points by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Next turn'
    click_button 'Attack'
    expect(page).not_to have_content 'Dave: 100HP'
    expect(page).to have_content 'Dave: 90HP'
  end

  scenario 'player 2 loses all HP and receives a you lose message' do
    lose_all_hp
    expect(page).to have_content 'Mittens loses!'
  end
end
