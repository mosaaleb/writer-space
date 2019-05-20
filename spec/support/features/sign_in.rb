module Features
  def sign_in user
    sign_in_as(user.email, user.password)
  end

  def sign_in_as(email, password)
    visit new_user_session_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_on 'Log in'
  end
end