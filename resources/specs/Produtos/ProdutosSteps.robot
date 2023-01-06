*** Settings ***
Resource  ../../base/Base.robot

*** Variables ***


${verifica_titulo}    //*[@id="header_container"]/div[2]/span[1]
${titulo}             PRODUCTS

${produto_escolhido}    //*[@id="item_4_title_link"]/div[1]

${produto_escolhido_titulo}     //*[@id="inventory_item_container"]/div[1]/div[1]/div[2]/div[1]
${produto_titulo}   Sauce Labs Backpack

${produto_escolhido_preco}     //*[@id="inventory_item_container"]/div[1]/div[1]/div[2]/div[3]
${produto_preco}    $29.99


*** Keywords ***
Dado que estou na pagina de listagem de Produtos
    ${titulo_paginaInicial}    Get Text     ${verifica_titulo}
    Should Be Equal            ${titulo}    ${titulo_paginaInicial}

E clico em um Produto para visualizar
    Click Element   ${produto_escolhido}

Entao visualizo os detalhes do produto com sucesso!
    ${titulo_String}   Get Text    ${produto_escolhido_titulo}
    Should Be Equal     ${produto_titulo}  ${titulo_String} 

    ${preco_String}   Get Text    ${produto_escolhido_preco}
    Should Be Equal     ${produto_preco}  ${preco_String}
    Close Browser

