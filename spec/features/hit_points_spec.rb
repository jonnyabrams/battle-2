feature 'Hit points' do
  scenario 'I can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Diego: 100HP'
  end
 
  scenario 'player 2 hit points reduces by 10 when attacked' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Diego: 90HP'
  end
end