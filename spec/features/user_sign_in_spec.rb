require 'rails_helper'

RSpec.feature 'User sign in' do
  
  background do
    @user = create(:user)
  end
  
  scenario 'successfully' do
    sign_in @user
    
    expect(page).to have_content 'Signed in successfully'
  end

  scenario 'unsuccessfully' do
    sign_in_as(@user.email, 'wrong password')

    expect(page).not_to have_content 'Signed in successfully'
  end
end