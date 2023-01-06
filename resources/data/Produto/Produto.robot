*** Settings ***
Documentation       Testando o produto


Library    Selenium2Library
Resource    ../../routes/Produto_route.robot
Resource    ../../base/Base.robot


*** Test Cases ***
Cenário 1 - Visualizar produto válido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos
    E clico em um Produto para visualizar
    Entao visualizo os detalhes do produto com sucesso!