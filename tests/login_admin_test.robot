*** Settings ***
Resource    ../resources/resources.robot

Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
CT1: Login de Admin com sucesso
    [Tags]    login_sucesso
    Passo 1: Acessar a página de login Academy
    Passo 2: Digitar um e-mail
    Passo 3: Digitar uma senha
    Passo 4: Clicar em entrar
    Passo 5: Clicar em Logout