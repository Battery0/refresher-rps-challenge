def enter_and_submit_name
  visit('/')
  expect(page).to have_content('Welcome to Rock Paper Scissors')
  expect(page).to have_content('Please enter your name to begin')
  expect(page).to have_content('Name:')
  fill_in('player_name', with: 'Ozzy')
  click_on('Submit')
end
