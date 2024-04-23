*** Settings ***
Resource    ../resources/resources.robot

Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***

CT4: Realizar cadastro de novo usuário
    [Tags]    new_user
    Passo 1: Logar com admin
    Passo 2: Clicar no botão cadastros
    Passo 3: Clicar em usuários
    Passo 4: Clicar em novo cadastro 
    Passo 5: Prencer formulário com nome completo e email
    Passo 6: Prencer formulário perfil de acesso admin
    Passo 7: Prencer formulário com cpf
    Passo 8: Prencer formulário com senha e confirmação de senha
    # Passo 9: Clicar no botão cancelar
    # Passo 10: Clicar no botão salvar