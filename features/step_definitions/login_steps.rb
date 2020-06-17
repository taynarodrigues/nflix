Quando("eu faço login com {string} e {string}") do |email, password|
  @login = LoginPage.new
  @login.go
  @login.with(email, password)
end

Então("devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  # puts token
   expect(token.length).to be 147 # verificar o token
end

Então("devo ver {string} na área logada") do |expect_name|
  user = find('.sidebar-wrapper .user .info span')
  # expect(page).to have_text expect_name #Conténs
  expect(user.text).to eql expect_name 

end

Então("não devo ser autenticado") do
  # sleep 5 
   js_script = 'return window.localStorage.getItem("default_auth_token");' 
   token = page.execute_script(js_script)
   expect(token).to be nil #O token é Nullo quando o login é sem sucesso

end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  alert = find('.alert')
  expect(alert.text).to eql expect_message
end