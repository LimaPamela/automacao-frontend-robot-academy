*** Settings ***
Resource    ../resources/resources.robot

Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
CT5: Realizar cadastro de novo usuário com campos vazios
    [Tags]    new_user_empty
    Passo 1: Logar com email e senha admin
    Passo 2: Clicar em cadastros
    Passo 3: Clicar no Botão usuários
    Passo 4: Clicar no botão novo cadastro
    Passo 5: Não prencer formulário com nome completo
    Passo 6: não prencer formulário com email
    Passo 7: Não prencer formulário perfil de acesso admin
    Passo 8: Não prencer formulário com cpf
    Passo 9: Não prencer formulário com senha
    Passo 10: Não prencer formulário com confirmação de senha
    # Passo 11: Clicar no botão cancelar formulário
    Passo 12: Clicar no botão salvar formulário