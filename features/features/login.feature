# language: pt
# encoding: utf-8

@login @ios @android
Funcionalidade: E2E Cenários Login

Contexto: 
    Dado um beneficiário titular
    E que esteja na Tela de Abertura

@login_sucesso
Cenário: Deve realizar o login.
    Quando realizar o login 
    E realizar a autenticação por SMS
    Então a Tela Home é apresentada

@login_termo_aceito @revogacao_termo
Cenário: Aceite de termo.
    Quando realizar o login
    E informar a 'concordar' do Termo de Aceite
    E realizar a autenticação por SMS
    Então a Tela Home é apresentada

@login_termo_negativado @revogacao_termo
Cenário: Negando o Aceite de termo.
    Quando realizar o login
    E informar a 'cancelar' do Termo de Aceite  
    Então a Tela Home é apresentada

@login_quiz
Cenário: Respondendo o Quiz corretamente.
    Quando realizar o login
    E respondo o quiz
    E realizar a autenticação por SMS
    Então a Tela Home é apresentada   

@login_quiz_cancelado
Cenário: Respondendo o Quiz incorretamente.
    Quando realizar o login
    E respondo o quiz
    Então a Tela de Abertura é apresentada   
