def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Lyna'
  fill_in 'player_2', with: 'Diego'
  click_on 'Submit'
end