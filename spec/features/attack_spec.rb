feature 'Attack' do
  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    expect(page).to have_link 'Attack'
  end

  scenario 'it confirms the attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Lyna attacked Diego'
  end
end