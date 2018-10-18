feature 'View hit points' do
  scenario "displays player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end

  scenario "displays player 1's HP" do
    sign_in_and_play
    expect(page).to have_content 'Dave: 100HP'
  end
end
