*** Settings ***

Library    Selenium2Library
Resource    ../../base/Base.robot

*** Variables ***

${input_username}    css:input#user-name
${input_senha}    css:input#password
${botao_login}    css:input#login-button
${verifica_titulo}    css:div#header_container > div:nth-of-type(2) > span
${titulo}             PRODUCTS

${card_mensagem_erro}    //*[@id="login_button_container"]/div[1]/form[1]/div[3]/h3[1]
${mensagem_erro}             Epic sadface: Sorry, this user has been locked out.

*** Keywords ***
Dado que estou na pagina de Login do Swag Labs
    Open Browser    ${URL}    Edge

E preencho o campo Username com "${email}"
    Input Text    ${input_username}    ${email}

E preencho o campo Password com "${senha}"
    Sleep         2s
    Input Text    ${input_senha}    ${senha}

Quando clico no botao Login
    Click Element    ${botao_login}


Verifica a mensagem de erro "${erro}"
    ${mensagem_erro}    Get Text    ${card_mensagem_erro}
    Should Be Equal    ${erro}    ${mensagem_erro}

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
    Should Be Equal            PRODUCTS     ${titulo_paginaInicial}
   