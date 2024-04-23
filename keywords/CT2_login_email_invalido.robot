*** Settings ***

Resource    ../resources/resources.robot


*** Variables ***

*** Keywords ***
Abrir o navegador chrome
    Open Browser       browser=chrome
    Set Window Size    1920    1080
Fechar o navegador chrome
    Capture Page Screenshot
    Close All Browsers
Passo 1: Acessar a página de login
    Go To    ${URL}    
Passo 2: Digitar um e-mail incorreto
    Wait Until Element Is Visible    ${emailInput}
    Input Text                       ${emailInput}    ${mailAdminError}
Passo 3: Digitar a senha admin
    Wait Until Element Is Visible    ${senhaInput}
    Input Password                   ${senhaInput}   ${passAdmin} 
Passo 4: Clicar no botão entrar
    Wait Until Element Is Visible    ${entrarButton}
    Click Button                     ${entrarButton}       
    Sleep    3