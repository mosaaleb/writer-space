require 'rails_helper'

RSpec.feature 'User sign in' do
  
  background do
    @user = User.create(email: 'person@example.com',
                        password: 'password',
                        password_confirmation: 'password')
  end
  
  scenario 'successfully' do
    sign_in @user
    

    expect(page).to have_content 'Signed in successfully'
  end

  scenario 'unsuccessfully' do
    sign_in_as @user.email, 'gogogogo'

    expect(page).not_to have_content 'Signed in successfully'
  end
end