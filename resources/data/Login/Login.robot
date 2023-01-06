*** Settings ***
Documentation       Testando a pagina login


Library    Selenium2Library
Resource    ../../base/Base.robot
Suite Teardown   Close All Browsers


*** Test Cases ***

#### Usuarios
Cenário 1 - Realizar Login com Username válido
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "standard_user"
    E preencho o campo Password com "secret_sauce"
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser

Cenário 2 - Realizar Login com Username bloqueado
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "locked_out_user"
    E preencho o campo Password com "secret_sauce"
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser

Cenário 3 - Realizar Login com Username problematico
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "problem_user"
    E preencho o campo Password com "secret_sauce"
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser


Cenário 4 - Realizar Login com Username perfomando ruim
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "performance_glitch_user"
    E preencho o campo Password com "secret_sauce"
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser

######################################################################

######## Usuario com Username Valido sem senha
Cenário 1 - Realizar Login com Username válido sem senha
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "standard_user"
    E preencho o campo Password com ""
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser
########################################################


######## Usuario com Username Bloqueado sem senha
Cenário 2 - Realizar Login com Username válido sem senha
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "locked_out_user"
    E preencho o campo Password com ""
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser
########################################################

######## Usuario com Username Com Problemas sem senha
Cenário 3 - Realizar Login com Username Com Problemas sem senha
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "problem_user"
    E preencho o campo Password com ""
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser
########################################################


######## Usuario com Username Com Problemas de Performance sem senha
Cenário 4 - Realizar Login com Username válido sem senha
    Dado que estou na pagina de Login do Swag Labs
    E preencho o campo Username com "performance_glitch_user"
    E preencho o campo Password com ""
    Quando clico no botao Login
    Entao consigo entrar no sistema com sucesso!!!
    Fechar o browser
########################################################











Cenario de Login rapido
    Logar rapido  standard_user     secret_sauce
