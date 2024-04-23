*** Settings ***

Resource    ../resources/resources.robot


*** Keywords ***
Abrir o navegador chromeDriver
    Open Browser       browser=chrome
    Set Window Size    1920    1080
Fechar o navegador chromeDriver
    Capture Page Screenshot
    Close All Browsers
Passo 1: Acessar a página login
    Go To    ${URL}    
Passo 2: Digitar um e-mail admin
    Wait Until Element Is Visible    ${emailInput}
    Input Text                       ${emailInput}    ${mailAdmin}
Passo 3: Digitar a senha incorreta
    Wait Until Element Is Visible    ${senhaInput}
    Input Password                   ${senhaInput}    ${passAdminError}
Passo 4: Clicar no button entrar
    Wait Until Element Is Visible    ${entrarButton}
    Click Button                     ${entrarButton}       
    Sleep    3