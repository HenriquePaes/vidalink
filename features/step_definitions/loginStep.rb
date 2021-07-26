Dado('um beneficiário titular') do
    
end
  
Dado('que esteja na Tela de Abertura') do
    @LoginPage.clicar_entrar
end

Quando('realizar o login') do
    @LoginPage.escrever_email
    @LoginPage.escrever_cpf
    @LoginPage.escrever_data_nascimento
    @LoginPage.clicar_proximo
end

Quando('realizar a autenticação por SMS') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('a Tela Home é apresentada') do
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('informar a {string} do Termo de Aceite') do |aprovacao|
    pending # Write code here that turns the phrase above into concrete actions
end

Quando('respondo o quiz') do
    pending # Write code here that turns the phrase above into concrete actions
end

Então('a Tela de Abertura é apresentada') do
    pending # Write code here that turns the phrase above into concrete actions
end
