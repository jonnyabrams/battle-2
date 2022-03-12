feature 'Enter player names' do
  scenario 'there are forms for entering names' do
    visit('/')
    expect(page).to have_field 'player_1'
    expect(page).to have_field 'player_2'
  end

  scenario 'the screen returns the player names' do
    sign_in_and_play
    expect(page).to have_content 'Lyna vs Diego'
  end
end