def enter_and_submit_name
  visit('/')
  expect(page).to have_content('Welcome to Rock Paper Scissors')
  expect(page).to have_content('Please enter your name to begin')
  expect(page).to have_content('Name:')
  fill_in('player_name', with: 'Ozzy')
  click_on('Submit')
end

def display_player_moves
  expect(page).to have_content('Please select a move')
  expect(page).to have_content('Rock')
  expect(page).to have_content('Paper')
  expect(page).to have_content('Scissors')
end
