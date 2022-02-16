feature 'new game' do

  scenario 'player can start a new game after finishing one' do
    enter_and_submit_name
    display_player_moves
    choose('Paper')
    click_button('Submit')
    click_button('New Game')
    expect(page).to have_content('Please select a move')
  end

end