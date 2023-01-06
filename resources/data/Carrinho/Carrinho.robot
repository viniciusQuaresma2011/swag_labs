*** Settings ***
Documentation       Testando o Carrinho de compras


Library    Selenium2Library
Resource    ../../routes/Carrinho_route.robot
Resource    ../../specs/Login/LoginSteps.robot
Suite Teardown   Close All Browsers


*** Test Cases ***

####### Cenários de testes com os Produtos inseridos no Carrinho ########

#### Usuario Válido
Cenário 1 - Escolher um produto válido e colocar no Carrinho - Usuario Valido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    Então o produto escolhido está no carrinho!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho - Usuario Valido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    Então os produtos escolhidos estão no carrinho!
##########################################################################################

#### Usuario Bloqueado
Cenário 1 - Escolher um produto válido e colocar no Carrinho - Usuario Bloqueado
    Logar rapido  locked_out_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    Então o produto escolhido está no carrinho!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho - Usuario Bloqueado
    Logar rapido  locked_out_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    Então os produtos escolhidos estão no carrinho!
#############################################################################################


#### Usuario Com Problemas
Cenário 1 - Escolher um produto válido e colocar no Carrinho - Usuario Com Problemas
    Logar rapido  problem_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    Então o produto escolhido está no carrinho!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho - Usuario Com Problemas
    Logar rapido  problem_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    Então os produtos escolhidos estão no carrinho!
#############################################################################################


#### Usuario Com Problemas de Performance
Cenário 1 - Escolher um produto válido e colocar no Carrinho - Usuario Com Problemas de Performance 
    Logar rapido  performance_glitch_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    Então o produto escolhido está no carrinho!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho - Usuario Com Problemas de Performance
    Logar rapido  performance_glitch_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    Então os produtos escolhidos estão no carrinho!
#############################################################################################


####### Cenários de testes com os Produtos no  Carrinho e Finalizando a Compra ########
Cenário 1 - Escolher um produto válido e colocar no Carrinho e Realizar a compra - Usuario Valido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra
    E visualizo a quantidade de produtos do Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos do Carrinho
    E visualizo a taxa de entrega dos Produtos do Carrinho
    E visualizo o total preco finalizado dos Produtos do Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
    

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho e Realizar a compra - Usuario Valido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra Dos Produtos
    E visualizo a quantidade dos produtos Adicionados ao Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos Adicionados ao Carrinho
    E visualizo a taxa de entrega dos Produtos Adicionados ao Carrinho
    E visualizo o total preco finalizado dos Produtos Adicionados ao Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!

############################################################################################


########## Cenários de testes com Usuarios ###################

#### Usuario Válido
Cenário 1 - Escolher um produto válido e realizar a compra com o Carrinho - Usuario Valido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra
    E visualizo a quantidade de produtos do Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos do Carrinho
    E visualizo a taxa de entrega dos Produtos do Carrinho
    E visualizo o total preco finalizado dos Produtos do Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho e Realizar a compra - Usuario Valido
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra Dos Produtos
    E visualizo a quantidade dos produtos Adicionados ao Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos Adicionados ao Carrinho
    E visualizo a taxa de entrega dos Produtos Adicionados ao Carrinho
    E visualizo o total preco finalizado dos Produtos Adicionados ao Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
###################################################################################################

#### Usuario Bloqueado
Cenário 1 - Escolher um produto válido e realizar a compra com o Carrinho - Usuario Bloqueado
    Logar rapido  locked_out_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra
    E visualizo a quantidade de produtos do Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos do Carrinho
    E visualizo a taxa de entrega dos Produtos do Carrinho
    E visualizo o total preco finalizado dos Produtos do Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!


Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho e Realizar a compra - Usuario Bloqueado
    Logar rapido  locked_out_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra Dos Produtos
    E visualizo a quantidade dos produtos Adicionados ao Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos Adicionados ao Carrinho
    E visualizo a taxa de entrega dos Produtos Adicionados ao Carrinho
    E visualizo o total preco finalizado dos Produtos Adicionados ao Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
###################################################################################################

#### Usuario Problemas
Cenário 1 - Escolher um produto válido e realizar a compra com o Carrinho - Usuario Com Problemas
    Logar rapido  problem_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra
    E visualizo a quantidade de produtos do Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos do Carrinho
    E visualizo a taxa de entrega dos Produtos do Carrinho
    E visualizo o total preco finalizado dos Produtos do Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho e Realizar a compra - Usuario Problemas
    Logar rapido  problem_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra Dos Produtos
    E visualizo a quantidade dos produtos Adicionados ao Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos Adicionados ao Carrinho
    E visualizo a taxa de entrega dos Produtos Adicionados ao Carrinho
    E visualizo o total preco finalizado dos Produtos Adicionados ao Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
###################################################################################################


#### Usuario Problemas
Cenário 1 - Escolher um produto válido e realizar a compra com o Carrinho - Usuario Com Problemas de Performance
    Logar rapido  performance_glitch_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho um produto
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com o produto Escolhido
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra
    E visualizo a quantidade de produtos do Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos do Carrinho
    E visualizo a taxa de entrega dos Produtos do Carrinho
    E visualizo o total preco finalizado dos Produtos do Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!

Cenário 2 - Escolher mais de um produto válido e colocar no Carrinho e Realizar a compra - Usuario Problemas de Performance
    Logar rapido  performance_glitch_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho mais de um produto
    E adiciono os produtos escolhidos ao Carrinho
    E clico para visualizar o Carrinho com os produtos Escolhidos
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Usuario"
    E preencho o campo Last Name com o dado "Test"
    E preencho o campo Zip/Postal Code com o dado "Rua teste"
    E clico em Continuar para visualizar os detalhes da compra Dos Produtos
    E visualizo a quantidade dos produtos Adicionados ao Carrinho
    E visualizo a forma de pagamento do Carrinho
    E visualizo a forma de entrega dos Produtos do Carrinho
    E visualizo o total preco dos Produtos Adicionados ao Carrinho
    E visualizo a taxa de entrega dos Produtos Adicionados ao Carrinho
    E visualizo o total preco finalizado dos Produtos Adicionados ao Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
###################################################################################################
