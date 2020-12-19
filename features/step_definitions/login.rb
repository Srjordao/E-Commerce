Dado('que quero realizar login') do
    @preencher.acessar
    @login.btn_login  
  end
  
  Quando('preencho {string},{string}') do |email,senha|
    @login.logar(email,senha)
  end
  
  Entao('acesso a minha conta e vejo {string}') do |mensagem|
    expect(page).to have_content mensagem
  end 
  Entao('acesso a minha conta e vejo mensagem {string}') do |mensagem2|
    expect(page).to have_content mensagem2   

  end 
  