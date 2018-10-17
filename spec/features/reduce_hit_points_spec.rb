feature 'Hit points' do
  scenario 'attack reduces hit points by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Mittens: 100HP'
    expect(page).to have_content 'Mittens: 90HP'
  end
end
