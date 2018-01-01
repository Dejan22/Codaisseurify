require 'rails_helper'

feature 'Create a song', js: true do
  scenario 'add a new song' do
    # Point your browser towards the todo path
    visit 'http://localhost:3000/artists/13'

    # Enter description in the text field

    fill_in 'song_title', with: 'Capybara song'
    fill_in 'album', with: 'Capybara album'
    fill_in 'release_date', with: '1958'


    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Capybara song')
  end
end
