*** Settings ***

Resource    ../../base/Base.robot
Library    String


*** Variables ***
###### GlobalAttributes #########

#Titulo
${verifica_titulo}    //*[@id="header_container"]/div[2]/span[1]

#Ordenaçao
${ordenacao}    //*[@class="product_sort_container"]

${ordenacao_menor_maior}    //*[@class="product_sort_container"]/option[3]

#HomePage
${retornar_home}    //*[@id="back-to-products"]   

#Produto
${produto}       //*[@class="inventory_item_label"]
${produto_container}        //*[@class="inventory_item"]
${produto_container_titulo}     //*[@class="inventory_item_name"]
${produto_container_desc}     //*[@class="inventory_item_desc"]
${produto_container_preco}     //*[@class="inventory_item_price"]

${produto_container_preco_1}      xpath=/html/body/div[1]/div/div/div[2]/div/div[1]/div[3]/div[2]/div[2]/div
${produto_container_preco_2}      xpath=/html/body/div[1]/div/div/div[2]/div/div[1]/div[4]/div[2]/div[2]/div

# Etapa: Checkout
${produto_container_checkout_preco_1}       xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]
${produto_container_checkout_preco_2}       xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[4]/div[2]/div[2]/div[1]
#####################################################

#Carrinho
${add_cart}      xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/button[1]

${botao_voltar}     //*[@id="back-to-products"]
${botao_checkout}    //*[@id="checkout"]

${botao_finalizar}    //*[@id="finish"]

#Meio de Pagamento
${info_pagamento}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[2]

#Preço total do Carrinho
${total_carrinho}    //*[@id="checkout_summary_container"]/div/div[1]/div[3]/div[2]/div[2]/div

#Taxa do Carrinho
${taxa_carrinho}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[7]

#Preço total FINALIZADO do Carrinho
${total_finalizado}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[8]

########################################################################

#Produtos no Carrinho
${show_cart}    //*[@id="shopping_cart_container"]/a[1]

${cart_produto_titulo}    //*[@id="item_4_title_link"]/div[1]
${cart_produto_preco}     //*[@id="cart_contents_container"]/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]
${qtde_produto_carrinho}    //*[@id="checkout_summary_container"]/div[1]/div[1]/div[3]/div[1]

# Etapa: Checkout Final
${qtde_produto_carrinho_menorpreco_1}     //*[@id="checkout_summary_container"]/div[1]/div[1]/div[3]/div[1]
${qtde_produto_carrinho_menorpreco_2}     //*[@id="checkout_summary_container"]/div[1]/div[1]/div[4]/div[1]

${preco_total_dois_produtos_carrinho}       //*[@id="checkout_summary_container"]/div[1]/div[2]/div[6]
##############################################################################


#Endereço de entrega
${first_name_input}          //*[@id="first-name"]
${last_name_input}           //*[@id="last-name"]
${address_delivery_input}    //*[@id="postal-code"]



${botao_continue}    //*[@id="continue"]

${produto_escolhido_carrinho_titulo}    //*[@id="item_4_title_link"]/div[1]
${produto_escolhido_carrinho_preco}     //*[@id="checkout_summary_container"]/div[1]/div[1]/div[3]/div[2]/div[2]/div[1]

${info_entrega}    //*[@id="checkout_summary_container"]/div[1]/div[2]/div[4]
##############################################################################################


#Mensagem de Verificação
${sucess_message}    //*[@id="checkout_complete_container"]/h2[1]
${message}           Thank you for your order!


${details_message_success}    //*[@id="checkout_complete_container"]/div[1]
${details}                    Your order has been dispatched, and will arrive just as fast as the pony can get there!
#####################################################################################


*** Keywords ***
Dado que estou na pagina de listagem de Produtos - carrinho

    ${titulo_paginaInicial}    Get Text     ${verifica_titulo}
    Log      ${titulo_paginaInicial} 
    Should Be Equal            Products     ${titulo_paginaInicial}
    Log     ${titulo}


E escolho uma camisa do tipo "${tipo}" e com a cor "${cor}"
   
    Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)

    Sleep   2s

    Page Should Contain Element    xpath=//*[contains(text(),'${tipo}') and contains(text(),'${cor}')] 
    ${titulo_produto_details}       Get Text    xpath=//*[contains(text(),'${tipo}') and contains(text(),'${cor}')]

    ${Status}=     Run Keyword And Return Status   Page Should Contain Element    xpath=//*[contains(text(),'${tipo}') and contains(text(),'${cor}')]

    IF   '${Status}' == 'True'    
        Click Element      //*[contains(text(),'${cor}')]
    END
    
    Sleep   2s

    ${titulo_produto_details}       Get Text    xpath=/html/body/div[1]/div/div/div[2]/div/div/div[2]/div[1]
    Click Element            //*[contains(text(),'${tipo}')]

    Page Should Contain Element    xpath=//*[contains(text(),'${tipo}') and contains(text(),'${cor}')]  


E escolho uma bolsa do tipo "${tipo}"

   

    Page Should Contain Element    xpath=//*[contains(text(),'${tipo}')] 
    ${titulo_produto_details}       Get Text    xpath=//*[contains(text(),'${tipo}')]

    ${Status}=     Run Keyword And Return Status   Page Should Contain Element    xpath=//*[contains(text(),'${tipo}')]

    IF   '${Status}' == 'True'    
        Click Element      //*[contains(text(),'${tipo}')]
    END
    
    Sleep   2s

    ${titulo_produto_details}       Get Text    xpath=/html/body/div[1]/div/div/div[2]/div/div/div[2]/div[1]
    Click Element            //*[contains(text(),'${tipo}')]

    Page Should Contain Element    xpath=//*[contains(text(),'${tipo}')]  


E adiciono ao Carrinho
    Click Element    ${add_cart}





   


E clico para visualizar o Carrinho com a camisa tipo "${tipo}" e cor "${cor}"
    Click Element       ${show_cart}


    ${produto_detalhes_visualizar}       Get Text    xpath=//*[contains(text(),'${tipo}') and contains(text(),'${cor}')]
    Log     ${produto_detalhes_visualizar}
    
    ${tipo_editado}    Remove String     ${produto_detalhes_visualizar}    Test.allTheThings()  (Red)
    Log     ${tipo_editado} 

    ${cor_editado}    Remove String     ${produto_detalhes_visualizar}    Test.allTheThings() T-Shirt ()
    Log     ${cor_editado}

    ${tipo_editado_clean}     Evaluate    "${tipo_editado}".split(" ")[1]
    Log      ${tipo_editado_clean}

    ${cor_editado_clean}     Evaluate    "${cor_editado}".split(" ")[2]
    Log      ${cor_editado_clean}

    ${cor_editado_clean_parenteses}    Remove String     ${cor_editado_clean}    (   )
    Log         ${cor_editado_clean_parenteses} 

    Should Be Equal     ${tipo}     ${tipo_editado_clean} 
    Should Be Equal    ${cor}   ${cor_editado_clean_parenteses}

E clico para visualizar o Carrinho com a bolsa tipo "${tipo}"
    Click Element       ${show_cart}


    ${produto_detalhes_visualizar}       Get Text    xpath=//*[contains(text(),'${tipo}')]
    Log     ${produto_detalhes_visualizar}
    
    ${tipo_editado}    Remove String     ${produto_detalhes_visualizar}    Sauce Labs 
    Log     ${tipo_editado} 

    ${tipo_editado_clean}     Evaluate    "${tipo_editado}".split(" ")[1]
    Log      ${tipo_editado_clean}


    Should Be Equal     ${tipo}     ${tipo_editado_clean} 
    



E clico no botão Checkout
    Click Element    ${botao_checkout}

E preencho o campo First Name com o dado "${first_name}"
    Input Text    ${first_name_input}    ${first_name}

E preencho o campo Last Name com o dado "${last_name}"
    Input Text    ${last_name_input}    ${last_name}

E preencho o campo Zip/Postal Code com o dado "${address_delivery}"
    Input Text    ${address_delivery_input}    ${address_delivery}

E clico em Continuar para visualizar os detalhes da compra da camisa tipo "${tipo}", cor "${cor}" e preco "${preco}" 
    Click Element    ${botao_continue}

    ${preco_produto_escolhido}      Get Text    ${produto_escolhido_carrinho_preco} 
    Log     ${preco_produto_escolhido}

    ${preco_produto_escolhido_clean}        Remove String       ${preco_produto_escolhido}    $

   ${produto_detalhes_visualizar}       Get Text    xpath=//*[contains(text(),'${tipo}') and contains(text(),'${cor}')]
    Log     ${produto_detalhes_visualizar}
    
    ${tipo_editado}    Remove String     ${produto_detalhes_visualizar}    Test.allTheThings()  (Red)
    Log     ${tipo_editado} 

    ${cor_editado}    Remove String     ${produto_detalhes_visualizar}    Test.allTheThings() T-Shirt ()
    Log     ${cor_editado}

    ${tipo_editado_clean}     Evaluate    "${tipo_editado}".split(" ")[1]
    Log      ${tipo_editado_clean}

    ${cor_editado_clean}     Evaluate    "${cor_editado}".split(" ")[2]
    Log      ${cor_editado_clean}

    ${cor_editado_clean_parenteses}    Remove String     ${cor_editado_clean}    (   )
    Log         ${cor_editado_clean_parenteses} 

    Should Be Equal     ${tipo}     ${tipo_editado_clean} 
    Should Be Equal    ${cor}       ${cor_editado_clean_parenteses}
    Should Be Equal    ${preco}     ${preco_produto_escolhido_clean}  

E clico em Continuar para visualizar os detalhes da compra da bolsa tipo "${tipo}", preco "${preco}"
    Click Element    ${botao_continue}

    ${preco_produto_escolhido}      Get Text    ${produto_escolhido_carrinho_preco} 
    Log     ${preco_produto_escolhido}

    ${preco_produto_escolhido_clean}        Remove String       ${preco_produto_escolhido}    $

   ${produto_detalhes_visualizar}       Get Text    xpath=//*[contains(text(),'${tipo}')]
    Log     ${produto_detalhes_visualizar}
    
    ${tipo_editado}    Remove String     ${produto_detalhes_visualizar}    Sauce Labs 
    Log     ${tipo_editado} 


    ${tipo_editado_clean}     Evaluate    "${tipo_editado}".split(" ")[1]
    Log      ${tipo_editado_clean}


    Should Be Equal     ${tipo}     ${tipo_editado_clean} 
    Should Be Equal    ${preco}     ${preco_produto_escolhido_clean}  





E visualizo a quantidade do produto escolhido no Carrinho de Compras - "${qtde}"
    ${qtde_String_carrinho}    Get Text    ${qtde_produto_carrinho}
    Should Be Equal            ${qtde}     ${qtde_String_carrinho}






E visualizo o meio de pagamento do Carrinho - "${meio_de_pagamento}"
    ${pagamento_String_carrinho}    Get Text        ${info_pagamento}
    Should Be Equal                 ${meio_de_pagamento}    ${pagamento_String_carrinho}

E visualizo a forma de entrega dos Produtos do Carrinho - "${forma_de_entrega}"
    ${entrega_String_carrinho}    Get Text      ${info_entrega}
    Should Be Equal               ${forma_de_entrega}    ${entrega_String_carrinho}

E visualizo o total preco do Produto do Carrinho - "${preco_produto_carrinho}"
    ${total_String_carrinho}    Get Text    ${total_carrinho}

    ${preco_total_produto_escolhido_carrinho_clean}        Remove String       ${total_String_carrinho}    $
    Should Be Equal             ${preco_produto_carrinho}    ${preco_total_produto_escolhido_carrinho_clean}

E visualizo o total preco dos Produtos Adicionados ao Carrinho
    ${total_String_carrinho_2}    Get Text    ${total_carrinho_2}
    Page Should Contain             ${total_2}    ${total_String_carrinho_2}


E visualizo a taxa de entrega do Produto do Carrinho - "${preco_taxa_carrinho}"
    Wait Until Element Is Visible    ${taxa_carrinho}
    ${taxa_String_carrinho}          Get Text            ${taxa_carrinho}

    ${preco_taxa_produto_escolhido_carrinho_clean}        Remove String       ${taxa_String_carrinho}    Tax: $
    Should Be Equal             ${preco_taxa_carrinho}    ${preco_taxa_produto_escolhido_carrinho_clean}

    








E visualizo o preco total finalizado do Produto do Carrinho - "${preco_total_finalizado}"
    ${preco_total_finalizado_carrinho_clean}    Get Text         ${total_finalizado}


    ${preco_total_finalizado_escolhido_carrinho_clean}        Remove String       ${preco_total_finalizado_carrinho_clean}    Total: $
    Should Be Equal             ${preco_total_finalizado}    ${preco_total_finalizado_escolhido_carrinho_clean}



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







#Keywords Personalizadas
E ordeno os valores dos produtos do menor para o maior
    Click Element   ${ordenacao}
    Sleep   2s
    Click Element   ${ordenacao_menor_maior}

    Sleep   2s

E adiciono ao Carrinho os dois primeiros produtos com menor preco
    
    ${preco_produto_container}      Get Text    ${produto_container_preco}

    ${preco_produto_container_clean}    Remove String     ${preco_produto_container}    $

    IF  ${preco_produto_container_clean}<10
        Click Element      xpath=//div[@class='pricebar']/button

        Execute JavaScript      window.scrollTo(0, 120)
      
        Click Element      xpath=/html/body/div[1]/div/div/div[2]/div/div/div/div[2]/div[2]/div[2]/button
     
    END

E clico para visualizar o Carrinho com os dois produtos adicionados pelo menor preco
    Click Element       ${show_cart}

  

    ${preco_produto_container_1}      Get Text    ${produto_container_preco_1}
    ${preco_produto_container_clean_1}    Remove String     ${preco_produto_container_1}    $

    ${preco_produto_container_2}      Get Text    ${produto_container_preco_2}
    ${preco_produto_container_clean_2}    Remove String     ${preco_produto_container_2}    $


    Should Be True      ${preco_produto_container_clean_1}<10
    Should Be True      ${preco_produto_container_clean_2}<10
    Log         ${preco_produto_container_clean_1}
    Log         ${preco_produto_container_clean_2}

E clico em Continuar para visualizar os detalhes da compra dos dois produtos com menor preço
    Click Element    ${botao_continue}

    ${preco_produto_escolhido_1}      Get Text    ${produto_container_checkout_preco_1} 
    Log     ${preco_produto_escolhido_1}

    ${preco_produto_escolhido_clean_1}        Remove String       ${preco_produto_escolhido_1}    $
    
    
    ${preco_produto_escolhido_2}      Get Text    ${produto_container_checkout_preco_2} 
    Log     ${preco_produto_escolhido_2}

    ${preco_produto_escolhido_clean_2}        Remove String       ${preco_produto_escolhido_2}    $

    Should Be True     ${preco_produto_escolhido_clean_1}<10
    Should Be True     ${preco_produto_escolhido_clean_2}<10

E visualizo a quantidade dos produtos Adicionados ao Carrinho de Compras pelo menor preco
    ${qtde_String_carrinho_final_1}    Get Text    ${qtde_produto_carrinho_menorpreco_1}
    Should Be Equal          1      ${qtde_String_carrinho_final_1}

    ${qtde_String_carrinho_final_2}    Get Text    ${qtde_produto_carrinho_menorpreco_1}
    Should Be Equal          1      ${qtde_String_carrinho_final_2}

E visualizo a taxa de entrega dos dois Produtos Adicionados ao Carrinho
   Wait Until Element Is Visible    ${taxa_carrinho}
    ${taxa_String_carrinho}          Get Text            ${taxa_carrinho}

    ${taxa_String}        Remove String       ${taxa_String_carrinho}    Tax: $
    Should Be Equal             1.44        ${taxa_String}

E visualizo o total preco dos dois Produtos do Carrinho
    ${preco_final_produto_carrinho}     Get Text    ${preco_total_dois_produtos_carrinho}
    Log     ${preco_final_produto_carrinho}

E visualizo o preco total finalizado dos dois Produtos do Carrinho
    ${preco_total_finalizado_carrinho_clean}    Get Text         ${total_finalizado}


    ${preco_total_finalizado_escolhido_carrinho_clean}        Remove String       ${preco_total_finalizado_carrinho_clean}    Total: $
    Should Be Equal             19.42    ${preco_total_finalizado_escolhido_carrinho_clean}



    