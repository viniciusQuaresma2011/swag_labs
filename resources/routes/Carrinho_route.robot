*** Settings ***

Resource    ../base/Base.robot


*** Variables ***


${verifica_titulo}    //*[@id="header_container"]/div[2]/span[1]
${titulo}             PRODUCTS

${produto_escolhido}    //*[@id="item_4_title_link"]/div[1]

${produto_escolhido_2}    //*[@id="item_0_title_link"]/div[1]

${produto_escolhido_3}    //*[@id="item_1_title_link"]/div[1]





### Produto 1
${produto_escolhido_titulo}    //*[@id="inventory_item_container"]/div[1]/div[1]/div[2]/div[1]
${produto_titulo}              Sauce Labs Backpack

${produto_escolhido_preco}    //*[@id="inventory_item_container"]/div[1]/div[1]/div[2]/div[3]
${produto_preco}              $29.99
##############################################################################################

### Produto 2
${produto_titulo_2}              Sauce Labs Bike Light

${produto_preco_2}              $9.99
##############################################################################################

### Produto 3
${produto_titulo_3}              Sauce Labs Bolt T-Shirt

${produto_preco_3}              $15.99
##############################################################################################

${botao_voltar}     //*[@id="back-to-products"]

${add_cart}      //*[@id="add-to-cart-sauce-labs-backpack"]
${add_cart_2}    //*[@id="add-to-cart-sauce-labs-bike-light"]
${add_cart_3}    //*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]


########## Produtos no Carrinho
${show_cart}    //*[@id="shopping_cart_container"]/a[1]

${cart_produto_titulo}    //*[@id="item_4_title_link"]/div[1]
${cart_produto_preco}     //*[@id="cart_contents_container"]/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]

${cart_produto_titulo_2}    //*[@id="item_0_title_link"]/div[1]
${cart_produto_preco_2}     //*[@id="cart_contents_container"]/div[1]/div[1]/div[4]/div[2]/div[2]/div[1]

${cart_produto_titulo_3}    //*[@id="item_1_title_link"]/div[1]
${cart_produto_preco_3}     //*[@id="cart_contents_container"]/div[1]/div[1]/div[5]/div[2]/div[2]/div[1]
############################################################################################################

${botao_checkout}    //*[@id="checkout"]

${first_name_input}          //*[@id="first-name"]
${last_name_input}           //*[@id="last-name"]
${address_delivery_input}    //*[@id="postal-code"]

${botao_continue}    //*[@id="continue"]

${produto_escolhido_carrinho_titulo}    //*[@id="item_4_title_link"]/div[1]
${produto_escolhido_carrinho_preco}     //*[@id="checkout_summary_container"]/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]

${produto_escolhido_carrinho_titulo_2}    //*[@id="item_0_title_link"]/div[1]
${produto_escolhido_carrinho_preco_2}     //*[@id="checkout_summary_container"]/div[1]/div[1]/div[4]/div[2]/div[2]/div[1]

${produto_escolhido_carrinho_titulo_3}    //*[@id="item_1_title_link"]/div[1]
${produto_escolhido_carrinho_preco_3}     //*[@id="checkout_summary_container"]/div[1]/div[1]/div[5]/div[2]/div[2]/div[1]



${qtde_produto_carrinho}    //*[@id="checkout_summary_container"]/div[1]/div[1]/div[3]/div[1]
${qtde}                     1

${qtde_produto_carrinho_2}    //*[@id="checkout_summary_container"]/div[1]/div[1]/div[4]/div[1]
${qtde_2}                     1

${qtde_produto_carrinho_3}    //*[@id="checkout_summary_container"]/div[1]/div[1]/div[5]/div[1]
${qtde_3}                     1



${info_pagamento}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[2]
${pagamento}         SauceCard #31337


#### ok
${info_entrega}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[4]
${entrega}         FREE PONY EXPRESS DELIVERY!
#### ok

#### ok
${total_carrinho}    //*[@id="checkout_summary_container"]/div/div[1]/div[3]/div[2]/div[2]/div
${total_carrinho_2}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[5]

${total}             $29.99
${total_2}           $55.97
#### ok



#### ok
${taxa_carrinho}    //*[@id="checkout_summary_container"]/div/div[2]/div[6]
${taxa}             Tax: $2.40
${taxa_2}             Tax: $4.48

#### ok

#### ok
${total_finalizado}    //*[@id="checkout_summary_container"]/div/div[2]/div[7]
${finalizado}          $32.39
${finalizado_2}          $60.45
#### ok

#### ok
${botao_finalizar}    //*[@id="finish"]
#### ok

#### ok
${sucess_message}    //*[@id="checkout_complete_container"]/h2[1]
${message}           THANK YOU FOR YOUR ORDER
#### ok

#### ok
${details_message_success}    //*[@id="checkout_complete_container"]/div[1]
${details}                    Your order has been dispatched, and will arrive just as fast as the pony can get there!
#### ok

${retornar_home}    //*[@id="back-to-products"]    

*** Keywords ***
Dado que estou na pagina de listagem de Produtos - carrinho

    ${titulo_paginaInicial}    Get Text     ${verifica_titulo}
    Should Be Equal            ${titulo}    ${titulo_paginaInicial}

E escolho um produto
    Click Element    ${produto_escolhido}

    ${titulo_String}    Get Text             ${produto_escolhido_titulo}
    Should Be Equal     ${produto_titulo}    ${titulo_String} 


    ${preco_String}    Get Text            ${produto_escolhido_preco}
    Should Be Equal    ${produto_preco}    ${preco_String}

E escolho mais de um produto
    Click Element    ${produto_escolhido}

    ${titulo_String}    Get Text             ${produto_escolhido_titulo}
    Should Be Equal     ${produto_titulo}    ${titulo_String} 
    

    ${preco_String}    Get Text            ${produto_escolhido_preco}
    Should Be Equal    ${produto_preco}    ${preco_String}

    Click Element    ${botao_voltar}

    Click Element    ${produto_escolhido_2}

    ${titulo_String_2}    Get Text             ${produto_escolhido_titulo}
    Should Be Equal     ${produto_titulo_2}    ${titulo_String_2} 

    ${preco_String_2}    Get Text            ${produto_escolhido_preco}
    Should Be Equal    ${produto_preco_2}    ${preco_String_2}

    Click Element   ${botao_voltar}

    Click Element    ${produto_escolhido_3}

    ${titulo_String_3}    Get Text             ${produto_escolhido_titulo}
    Should Be Equal     ${produto_titulo_3}    ${titulo_String_3} 

    ${preco_String_3}    Get Text            ${produto_escolhido_preco}
    Should Be Equal    ${produto_preco_3}    ${preco_String_3}

    Click Element   ${botao_voltar}

E adiciono ao Carrinho
    Click Element    ${add_cart}

E adiciono os produtos escolhidos ao Carrinho
    Click Element    ${add_cart}
    Click Element    ${add_cart_2}
    Click Element    ${add_cart_3}

E clico para visualizar o Carrinho com os produtos Escolhidos
    Click Element       ${show_cart}
    ${titulo_String}    Get Text             ${cart_produto_titulo}
    Should Be Equal     ${produto_titulo}    ${titulo_String} 

    ${preco_String}    Get Text            ${cart_produto_preco}
    Should Be Equal    ${produto_preco}    ${preco_String}

    
    ${titulo_String_2}    Get Text             ${cart_produto_titulo_2}
    Should Be Equal     ${produto_titulo_2}    ${titulo_String_2} 

    ${preco_String_2}    Get Text            ${cart_produto_preco_2}
    Should Be Equal    ${produto_preco_2}    ${preco_String_2}

    ${titulo_String_3}    Get Text             ${cart_produto_titulo_3}
    Should Be Equal     ${produto_titulo_3}    ${titulo_String_3} 

    ${preco_String_3}    Get Text            ${cart_produto_preco_3}
    Should Be Equal    ${produto_preco_3}    ${preco_String_3}

   


E clico para visualizar o Carrinho com o produto Escolhido
    Click Element       ${show_cart}
    ${titulo_String}    Get Text             ${cart_produto_titulo}
    Should Be Equal     ${produto_titulo}    ${titulo_String} 

    ${preco_String}    Get Text            ${cart_produto_preco}
    Should Be Equal    ${produto_preco}    ${preco_String}

E clico no botão Checkout
    Click Element    ${botao_checkout}

E preencho o campo First Name com o dado "${first_name}"
    Input Text    ${first_name_input}    ${first_name}

E preencho o campo Last Name com o dado "${last_name}"
    Input Text    ${last_name_input}    ${last_name}

E preencho o campo Zip/Postal Code com o dado "${address_delivery}"
    Input Text    ${address_delivery_input}    ${address_delivery}

E clico em Continuar para visualizar os detalhes da compra
    Click Element    ${botao_continue}

    ${titulo_String_carrinho}    Get Text             ${produto_escolhido_carrinho_titulo}
    Should Be Equal              ${produto_titulo}    ${titulo_String_carrinho}

    ${preco_String_carrinho}    Get Text            ${produto_escolhido_carrinho_preco}
    Should Be Equal             ${produto_preco}    ${preco_String_carrinho}

E clico em Continuar para visualizar os detalhes da compra Dos Produtos
    Click Element    ${botao_continue}

    ${titulo_String_carrinho}    Get Text             ${produto_escolhido_carrinho_titulo}
    Should Be Equal              ${produto_titulo}    ${titulo_String_carrinho}

    ${preco_String_carrinho}    Get Text            ${produto_escolhido_carrinho_preco}
    Should Be Equal             ${produto_preco}    ${preco_String_carrinho}

    ${titulo_String_carrinho_2}    Get Text             ${produto_escolhido_carrinho_titulo_2}
    Should Be Equal              ${produto_titulo_2}    ${titulo_String_carrinho_2}

    ${preco_String_carrinho_2}    Get Text            ${produto_escolhido_carrinho_preco_2}
    Should Be Equal             ${produto_preco_2}    ${preco_String_carrinho_2}

    ${titulo_String_carrinho_3}    Get Text             ${produto_escolhido_carrinho_titulo_3}
    Should Be Equal              ${produto_titulo_3}    ${titulo_String_carrinho_3}

    ${preco_String_carrinho_3}    Get Text            ${produto_escolhido_carrinho_preco_3}
    Should Be Equal             ${produto_preco_3}    ${preco_String_carrinho_3}





E visualizo a quantidade de produtos do Carrinho
    ${qtde_String_carrinho}    Get Text    ${qtde_produto_carrinho}
    Should Be Equal            ${qtde}     ${qtde_String_carrinho}

E visualizo a quantidade dos produtos Adicionados ao Carrinho
    ${qtde_String_carrinho}    Get Text    ${qtde_produto_carrinho}
    Should Be Equal            ${qtde}     ${qtde_String_carrinho}

    ${qtde_String_carrinho_2}    Get Text    ${qtde_produto_carrinho_2}
    Should Be Equal            ${qtde_2}     ${qtde_String_carrinho_2}

    ${qtde_String_carrinho_3}    Get Text    ${qtde_produto_carrinho_3}
    Should Be Equal            ${qtde_3}     ${qtde_String_carrinho_3}




E visualizo a forma de pagamento do Carrinho
    ${pagamento_String_carrinho}    Get Text        ${info_pagamento}
    Should Be Equal                 ${pagamento}    ${pagamento_String_carrinho}

E visualizo a forma de entrega dos Produtos do Carrinho
    ${entrega_String_carrinho}    Get Text      ${info_entrega}
    Should Be Equal               ${entrega}    ${entrega_String_carrinho}

E visualizo o total preco dos Produtos do Carrinho
    ${total_String_carrinho}    Get Text    ${total_carrinho}
    Should Be Equal             ${total}    ${total_String_carrinho}

E visualizo o total preco dos Produtos Adicionados ao Carrinho
    ${total_String_carrinho_2}    Get Text    ${total_carrinho_2}
    Page Should Contain             ${total_2}    ${total_String_carrinho_2}


E visualizo a taxa de entrega dos Produtos do Carrinho
    Wait Until Element Is Visible    ${taxa_carrinho}
    ${taxa_String_carrinho}          Get Text            ${taxa_carrinho}
    Should Be Equal                  ${taxa}             ${taxa_String_carrinho}

E visualizo a taxa de entrega dos Produtos Adicionados ao Carrinho
    Wait Until Element Is Visible    ${taxa_carrinho}
    ${taxa_String_carrinho_2}          Get Text            ${taxa_carrinho}
    Should Be Equal                  ${taxa_2}             ${taxa_String_carrinho_2}

E visualizo o total preco finalizado dos Produtos do Carrinho
    ${finalizado_String_carrinho}    Get Text         ${total_finalizado}
    Page Should Contain              ${finalizado}    ${finalizado_String_carrinho}

E visualizo o total preco finalizado dos Produtos Adicionados ao Carrinho
    ${finalizado_String_carrinho_2}    Get Text         ${total_finalizado}
    Page Should Contain              ${finalizado_2}    ${finalizado_String_carrinho_2}

Quando clico no botão Finish
    Click Element    ${botao_finalizar}

Então finalizo a compra dos produtos com sucesso!
    ${success_String_carrinho}    Get Text      ${sucess_message}
    Should Be Equal               ${message}    ${success_String_carrinho}

    ${details_String_carrinho}    Get Text            ${details_message_success}
    Should Be Equal               ${details}          ${details_String_carrinho}
    Click Element                 ${retornar_home}
    Close Browser


Então o produto escolhido está no carrinho!
    Close Browser

Então os produtos escolhidos estão no carrinho!
    Close Browser






