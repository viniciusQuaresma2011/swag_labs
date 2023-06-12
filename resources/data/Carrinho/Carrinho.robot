*** Settings ***
Documentation       Testando a compra de produtos


Resource    ../../steps/Produtos/ProdutosSteps.robot
Resource    ../../steps/Login/LoginSteps.robot
Resource    ../../steps/Carrinho/CarrinhoSteps.robot
Suite Teardown   Close All Browsers


*** Test Cases ***
#Cenários de testes: compra de camisa
Cenário 1 - Realizar a compra de uma camisa vermelha válida
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho uma camisa do tipo "T-Shirt" e com a cor "Red"
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com a camisa tipo "T-Shirt" e cor "Red"
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Kratos"
    E preencho o campo Last Name com o dado "Guerreiro"
    E preencho o campo Zip/Postal Code com o dado "Rua Sparta, Grécia"
    E clico em Continuar para visualizar os detalhes da compra da camisa tipo "T-Shirt", cor "Red" e preco "15.99" 
    E visualizo a quantidade do produto escolhido no Carrinho de Compras - "1"
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco do Produto do Carrinho - "15.99"
    E visualizo a taxa de entrega do Produto do Carrinho - "1.28"
    E visualizo o preco total finalizado do Produto do Carrinho - "17.27"
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
    
Cenário 2 - Realizar a compra de uma camisa vermelha inválida
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho uma camisa do tipo "@#$%@$#" e com a cor "*&¨%"
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com a camisa tipo "@#$%@$#" e cor "*&¨%"
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Kratos"
    E preencho o campo Last Name com o dado "Guerreiro"
    E preencho o campo Zip/Postal Code com o dado "Rua Sparta, Grécia"
    E clico em Continuar para visualizar os detalhes da compra da camisa tipo "@#$%@$#", cor "Red" e preco "*&¨%" 
    E visualizo a quantidade do produto escolhido no Carrinho de Compras - "1"
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco do Produto do Carrinho - "15.99"
    E visualizo a taxa de entrega do Produto do Carrinho - "1.28"
    E visualizo o preco total finalizado do Produto do Carrinho - "17.27"
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!

Cenário 3 - Realizar a compra de uma camisa vermelha nula
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho uma camisa do tipo "" e com a cor ""
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com a camisa tipo "" e cor ""
    E clico no botão Checkout
    E preencho o campo First Name com o dado ""
    E preencho o campo Last Name com o dado ""
    E preencho o campo Zip/Postal Code com o dado ""
    E clico em Continuar para visualizar os detalhes da compra da camisa tipo "", cor "" e preco "" 
    E visualizo a quantidade do produto escolhido no Carrinho de Compras - "1"
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco do Produto do Carrinho - "15.99"
    E visualizo a taxa de entrega do Produto do Carrinho - "1.28"
    E visualizo o preco total finalizado do Produto do Carrinho - "17.27"
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
###############################################################################



#Cenários de testes: compra de uma bolsa
Cenário 1 - Realizar a compra de uma bolsa válida
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho uma bolsa do tipo "Backpack"
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com a bolsa tipo "Backpack"
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Superman"
    E preencho o campo Last Name com o dado "Marvel"
    E preencho o campo Zip/Postal Code com o dado "Rua HQ/Filme, Olympo"
    E clico em Continuar para visualizar os detalhes da compra da bolsa tipo "Backpack", preco "29.99"
    E visualizo a quantidade do produto escolhido no Carrinho de Compras - "1"
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco do Produto do Carrinho - "29.99"
    E visualizo a taxa de entrega do Produto do Carrinho - "2.40"
    E visualizo o preco total finalizado do Produto do Carrinho - "32.39"
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!

Cenário 2 - Realizar a compra de uma bolsa inválida
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho uma bolsa do tipo "$¨$¨#$"
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com a bolsa tipo "$¨$¨%#"
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Superman"
    E preencho o campo Last Name com o dado "Marvel"
    E preencho o campo Zip/Postal Code com o dado "Rua HQ/Filme, Olympo"
    E clico em Continuar para visualizar os detalhes da compra da bolsa tipo "Backpack", preco "29.99"
    E visualizo a quantidade do produto escolhido no Carrinho de Compras - "1"
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco do Produto do Carrinho - "29.99"
    E visualizo a taxa de entrega do Produto do Carrinho - "2.40"
    E visualizo o preco total finalizado do Produto do Carrinho - "32.39"
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!


Cenário 3 - Realizar a compra de uma bolsa nula
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E escolho uma bolsa do tipo ""
    E adiciono ao Carrinho
    E clico para visualizar o Carrinho com a bolsa tipo ""
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Superman"
    E preencho o campo Last Name com o dado "Marvel"
    E preencho o campo Zip/Postal Code com o dado "Rua HQ/Filme, Olympo"
    E clico em Continuar para visualizar os detalhes da compra da bolsa tipo "", preco "29.99"
    E visualizo a quantidade do produto escolhido no Carrinho de Compras - "1"
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco do Produto do Carrinho - "29.99"
    E visualizo a taxa de entrega do Produto do Carrinho - "2.40"
    E visualizo o preco total finalizado do Produto do Carrinho - "32.39"
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!
##############################################################################




#Cenários de testes: compra de dois produtos com menor preço
Cenário 1 - Realizar a ordenação dos valores do menor para o maior e que seja comprado os dois produtos menores.
    Logar rapido  standard_user  secret_sauce
    Dado que estou na pagina de listagem de Produtos - carrinho
    E ordeno os valores dos produtos do menor para o maior
    E adiciono ao Carrinho os dois primeiros produtos com menor preco
    E clico para visualizar o Carrinho com os dois produtos adicionados pelo menor preco
    E clico no botão Checkout
    E preencho o campo First Name com o dado "Homem Aranha"
    E preencho o campo Last Name com o dado "Aranha"
    E preencho o campo Zip/Postal Code com o dado "Rua Spider, SpiderStreet"
    E clico em Continuar para visualizar os detalhes da compra dos dois produtos com menor preço
    E visualizo a quantidade dos produtos Adicionados ao Carrinho de Compras pelo menor preco
    E visualizo o meio de pagamento do Carrinho - "SauceCard #31337"
    E visualizo a forma de entrega dos Produtos do Carrinho - "Free Pony Express Delivery!"
    E visualizo o total preco dos dois Produtos do Carrinho
    E visualizo a taxa de entrega dos dois Produtos Adicionados ao Carrinho
    E visualizo o preco total finalizado dos dois Produtos do Carrinho
    Quando clico no botão Finish
    Então finalizo a compra dos produtos com sucesso!


############################################################################################

