feature 'select a move' do

  scenario 'choose paper and get a confirmation message' do
    enter_and_submit_name
    display_player_moves
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content('You selected \'Paper\'!')
  end

end
