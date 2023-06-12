*** Settings ***

Library    Selenium2Library
Resource    ../../base/Base.robot

*** Variables ***

${input_username}    //*[@id="user-name"]
${input_senha}    //*[@id="password"]
${botao_login}    //*[@id="login-button"]
${verifica_titulo}    //*[@id="header_container"]/div[2]/span[1]
${titulo}             Products

${verifica_mensagem_erro}    //*[@id="login_button_container"]/div[1]/form[1]/div[3]/h3
${mensagem_erro}             Epic sadface: Sorry, this user has been locked out.

*** Keywords ***
Dado que estou na pagina de Login do Swag Labs
    Open Browser    ${URL}    Chrome

E preencho o campo Username com "${email}"
    Input Text    ${input_username}    ${email}

E preencho o campo Password com "${senha}"
    Sleep         2s
    Input Text    ${input_senha}    ${senha}

Quando clico no botao Login
    Click Element    ${botao_login}

Entao consigo entrar no sistema com sucesso!!!
    ${titulo_paginaInicial}    Get Text     ${verifica_titulo}
    Should Be Equal            ${titulo}    ${titulo_paginaInicial}


Logar rapido
    [Arguments]         ${username}     ${password}
    Open Browser    ${URL}    Edge
    Input Text    ${input_username}     ${username}
    Input Text    ${input_senha}        ${password}
    Click Element    ${botao_login}
    ${titulo_paginaInicial}    Get Text     ${verifica_titulo}
    Should Be Equal            Products     ${titulo_paginaInicial}
   