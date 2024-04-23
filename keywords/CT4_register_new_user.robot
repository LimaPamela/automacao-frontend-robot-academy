*** Settings ***

Resource    ../resources/resources.robot

*** Keywords ***
Abrir o navegador new user
    Open Browser       browser=chrome
    Set Window Size    1920    1080
Fechar o navegador new user
    Capture Page Screenshot
    # Close All Browsers
Passo 1: Logar com admin
    Go To    ${URLLogin}    
    Wait Until Element Is Visible    ${emailInput}
    Input Text                       ${emailInput}    ${mailAdmin}
    Wait Until Element Is Visible    ${senhaInput}
    Input Password                   ${senhaInput}    ${passAdmin} 
    Wait Until Element Is Visible    ${entrarButton}
    Click Button                     ${entrarButton}            

Passo 2: Clicar no botão cadastros
    Wait Until Element Is Visible    ${cadastrosButton}
    Click Element                    ${cadastrosButton}
Passo 3: Clicar em usuários
    Wait Until Element Is Visible    ${usuariosButton}
    Click Element                     ${usuariosButton} 
Passo 4: Clicar em novo cadastro
    Wait Until Element Is Visible    ${novoCadastro} 
    Click Button                     ${novoCadastro}
Passo 5: Prencer formulário com nome completo e email
    Wait Until Element Is Visible    ${fullnameInput}
    ${fullNameFaker}=    FakerLibrary.Name
    Input Text     ${fullnameInput}         ${fullNameFaker}  

    Wait Until Element Is Visible    ${emailUser}
    ${mailfaker}=    Convert To Lower Case    ${fullNameFaker}
    ${mailfaker}=    Remove String      ${mailfaker}    ${SPACE}  Srta Sra Sr Dr Dra
    ${mailfaker}=    Remover Acentos    ${mailfaker}   
    Input Text                          ${emailUser}         ${mailfaker}@qacoders.com.br
Passo 6: Prencer formulário perfil de acesso admin
    Wait Until Element Is Visible    ${perfilAcesso}
    Input Text                       ${perfilAcesso}      ${pfAdmin}
Passo 7: Prencer formulário com cpf
    Wait Until Element Is Visible    ${cpfUser}
    ${CPF}=    Generate Random String    length=11   chars=[NUMBERS]
    Input Text                       ${cpfUser}           ${CPF} 
Passo 8: Prencer formulário com senha e confirmação de senha
    Wait Until Element Is Visible    ${passwordUser}
    Wait Until Element Is Visible    ${confirmPass}
    ${password}=    FakerLibrary.Password    
    Input Password                   ${passwordUser}     ${password}
    Input Password                   ${confirmPass}      ${password} 
Passo 10: Clicar no botão cancelar
    Wait Until Element Is Visible    ${cancelarCadastro} 
    Click Button                     ${cancelarCadastro}
Passo 11: Clicar no botão salvar
    Wait Until Element Is Visible    ${salvarCadastro} 
    Click Button                     ${salvarCadastro}