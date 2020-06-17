class LoginPage
  include Capybara::DSL
  
  def go
    visit '/'
  end

  def email
    find("#emailId")
  end

  def password
    find("#passId")
  end

  def sign_in_button
    click_button "Entrar"
  end
end