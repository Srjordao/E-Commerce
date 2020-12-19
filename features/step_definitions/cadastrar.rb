Dado('que quero realizar um cadastro') do
    
    @preencher.acessar
    @preencher.criar_email
    @preencher.botao
  end
  
  Quando('preencho as informações solicitadas') do
    
    @preencher.preencher
    
  end
  
  Quando('clico em proximo') do
  
    @preencher.registrar
  end
  
  Entao('recebo uma mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem 
  end
  