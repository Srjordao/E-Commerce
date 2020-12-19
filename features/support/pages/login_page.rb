class LoginPage 
include Capybara::DSL

def logar(email,senha)
  find("#email").set email
  find("#passwd").set senha
  find("#SubmitLogin").click
end 

def btn_login
  find(".login").click
end 























end 