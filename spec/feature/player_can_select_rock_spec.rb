feature 'select a move' do

  scenario 'choose rock and get a confirmation message' do
    enter_and_submit_name
    display_player_moves
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('Ozzy, you selected \'Rock\'!')
  end

  scenario 'choose paper and get a confirmation message' do
    enter_and_submit_name
    display_player_moves
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content('Ozzy, you selected \'Paper\'!')
  end

  scenario 'choose scissors and get a confirmation message' do
    enter_and_submit_name
    display_player_moves
    choose('Scissors')
    click_button('Submit')
    expect(page).to have_content('Ozzy, you selected \'Scissors\'!')
  end

end
