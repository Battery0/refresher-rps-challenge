feature 'select a move' do

  scenario 'choose rock and get a confirmation message' do
    enter_and_submit_name
    expect(page).to have_content('Please select a move')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('You selected \'Rock\'!')
  end

end
