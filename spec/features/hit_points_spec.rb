feature 'View hit points' do
  scenario "displays Mittens' hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
  end
end
