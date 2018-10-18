def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def lose_all_hp
  sign_in_and_play
  18.times do
    click_button 'Attack'
    click_button 'Next turn'
  end
  click_button 'Attack'
end
