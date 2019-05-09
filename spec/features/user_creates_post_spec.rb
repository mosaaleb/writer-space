require 'rails_helper'

RSpec.describe 'Creating post' do
  scenario 'successfully' do
    visit root_path
    click_on 'Write a story'

    fill_in 'Title', with: 'My first story'
    fill_in 'Body', with: 'My first content body'
    click_on 'Publish'

    expect(page).to have_content 'My first story'
  end
  
  scenario 'unsuccessfully' do
    visit root_path
    click_on 'Write a story'

    fill_in 'Title', with: 'My second story'
    fill_in 'Body', with: ''
    click_on 'Publish'

    expect(page).to have_css '.error'
  end
end
