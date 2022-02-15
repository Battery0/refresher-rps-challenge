feature 'select a move' do

  scenario 'choose rock and get a confirmation message' do
    visit('/')
    expect(page).to have_content('Welcome to Rock Paper Scissors')
    expect(page).to have_content('Please enter your name to begin')
    expect(page).to have_content('Name:')
    fill_in('player_name', with: 'Ozzy')
    click_on('Submit')
    expect(page).to have_content('Please select a move')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('You selected \'Rock\'!')
  end

end
