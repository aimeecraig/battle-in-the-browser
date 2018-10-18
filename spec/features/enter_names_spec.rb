feature 'Enter names' do
  scenario "Dave and Mittens' names submitted on homepage" do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
