feature 'A player can see their name' do

  scenario 'by signing up and receiving a welcome message' do
    enter_and_submit_name
    expect(page).to have_content('Welcome Ozzy')
  end

end
