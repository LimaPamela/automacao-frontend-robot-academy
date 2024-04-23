*** Settings ***

Resource    ../resources/resources.robot

*** Keywords ***
Abrir o navegador new user
    Open Browser       browser=chrome
    Set Window Size    1920    1080
Fechar o navegador new user
    Capture Page Screenshot
    # Close All Browsers
Passo 1: Logar com email e senha admin
    Go To    ${URLLogin}    
    Wait Until Element Is Visible    ${emailInput}
    Input Text                       ${emailInput}    sysadmin@qacoders.com
    Wait Until Element Is Visible    ${senhaInput}
    Input Password                   ${senhaInput}    1234@Test
    Wait Until Element Is Visible    ${entrarButton}
    Click Button                     ${entrarButton}            

Passo 2: Clicar em cadastros
    # Go To    ${URLHome}
    Wait Until Element Is Visible    ${cadastrosButton}
    Click Element                    ${cadastrosButton}
Passo 3: Clicar no Botão usuários
    # Go To    ${URLUSER}
    Wait Until Element Is Visible    ${usuariosButton}
    Click Element                     ${usuariosButton} 
Passo 4: Clicar no botão novo cadastro
    Wait Until Element Is Visible    ${novoCadastro} 
    Click Button                     ${novoCadastro}
Passo 5: Não prencer formulário com nome completo
    Wait Until Element Is Visible    ${fullnameInput}
    Input Text                       ${fullnameInput}    ${EMPTY}
Passo 6: não prencer formulário com email
    Wait Until Element Is Visible    ${emailUser}
    Input Text                       ${emailUser}    ${EMPTY}  
Passo 7: Não prencer formulário perfil de acesso admin
    Wait Until Element Is Visible    ${perfilAcesso}
    Input Text                       ${perfilAcesso}    ${EMPTY} 
Passo 8: Não prencer formulário com cpf
    Wait Until Element Is Visible    ${cpfUser}
    Input Text                       ${cpfUser}    ${EMPTY}     
Passo 9: Não prencer formulário com senha
    Wait Until Element Is Visible    ${passwordUser}
    Input Password                   ${passwordUser}    ${EMPTY} 
Passo 10: Não prencer formulário com confirmação de senha
    Wait Until Element Is Visible    ${confirmPass}
    Input Password                   ${confirmPass}    ${EMPTY}    
Passo 11: Clicar no botão cancelar formulário
    Wait Until Element Is Visible    ${cancelarCadastro} 
    Click Button                     ${cancelarCadastro}
Passo 12: Clicar no botão salvar formulário
    Wait Until Element Is Visible    ${salvarCadastro} 
    Click Button                     ${salvarCadastro}