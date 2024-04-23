*** Settings ***

Resource    ../resources/resources.robot

*** Keywords ***
Abrir o navegador
    Open Browser       browser=chrome
    Set Window Size    1920    1080
Fechar o navegador
    Capture Page Screenshot
    Close All Browsers
Passo 1: Acessar a página de login Academy
    Go To    ${URL}    
Passo 2: Digitar um e-mail
    Wait Until Element Is Visible    ${emailInput}
    Input Text                       ${emailInput}    ${mailAdmin}
Passo 3: Digitar uma senha
    Wait Until Element Is Visible    ${senhaInput}
    Input Password                   ${senhaInput}    ${passAdmin}
Passo 4: Clicar em entrar
    Wait Until Element Is Visible    ${entrarButton}
    Click Button                     ${entrarButton}       
Passo 5: Clicar em Logout
    Wait Until Element Is Visible    ${buttonLogout}
    Click Button                     ${buttonLogout}       
    Sleep    3