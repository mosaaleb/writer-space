require 'rails_helper'

RSpec.feature 'User sining up' do
  scenario 'successfully' do
    visit new_user_registration_path
    fill_in 'Email', with: 'name@example.com'
    fill_in 'Password', with: 'easy password'
    fill_in 'Password confirmation', with: 'easy password'
    click_on 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end

  scenario 'unsuccessfully' do
    visit new_user_registration_path
    fill_in 'Email', with: 'name@example.com'
    fill_in 'Password', with: 'easy password'
    fill_in 'Password confirmation', with: ''
    click_on 'Sign up'

    expect(page).to have_content 'error'
  end
end 