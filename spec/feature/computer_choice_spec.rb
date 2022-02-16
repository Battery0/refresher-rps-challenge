feature 'computer choice' do

  scenario 'is able to select rock, paper or scissors and should display its choice to player 1' do
    enter_and_submit_name
    display_player_moves
    choose('Rock')
    click_button('Submit')
    expect(page).to have_css('#computer_choice')
  end

end
