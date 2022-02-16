feature 'so the player knows if they have won' do

  scenario 'display a win / loose / draw message' do
    enter_and_submit_name
    display_player_moves
    choose('Rock')
    click_button('Submit')
    expect(page).to have_css('#game-result')
  end

end
