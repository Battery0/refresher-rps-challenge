feature 'A player can see their' do

  scenario 'by signing up and receiving a welcome message' do
    visit('/')
    expect(page).to have_content('Welcome to Rock Paper Scissors')
    expect(page).to have_content('Please enter your name to begin')
    expect(page).to have_content('Name:')
    fill_in('player_name', with: 'Ozzy')
    click_on('Submit')
    expect(page).to have_content('Welcome Ozzy')
  end

end
