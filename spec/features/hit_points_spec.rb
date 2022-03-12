feature 'Hit points' do
  scenario 'I can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Diego: 100HP'
  end
end