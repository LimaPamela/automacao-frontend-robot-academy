*** Settings ***
Resource    ../resources/resources.robot

Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
CT2: Login de Admin com email invalido
    [Tags]    login_email_invalido
    Passo 1: Acessar a página de login
    Passo 2: Digitar um e-mail incorreto
    Passo 3: Digitar a senha admin
    Passo 4: Clicar no botão entrar
CT3: Login de Admin com senha invalida
    [Tags]    login_senha_invalida
    Passo 1: Acessar a página login
    Passo 2: Digitar um e-mail admin
    Passo 3: Digitar a senha incorreta
    Passo 4: Clicar no button entrar

