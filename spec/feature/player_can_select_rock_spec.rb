feature 'select a move' do

  scenario 'choose rock and get a confirmation message' do
    enter_and_submit_name
    display_player_moves
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('You selected \'Rock\'!')
  end

end
