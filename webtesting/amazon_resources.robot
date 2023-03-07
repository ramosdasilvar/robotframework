*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                        http://www.amazon.com.br
${MENU_ELETRONICOS}           //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}         //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXT_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
${NOME_CATEGORIA}             //img[contains(@alt,'Computadores e Informática')]
${BTN_BUSCA}                  //input[contains(@type,'submit')]
${RESULT_BUSCA}               //div[contains(@class,'sg-col-20-of-24 s-matching-dir sg-col-16-of-20 sg-col sg-col-8-of-12 sg-col-12-of-16')]

*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXT_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o titulo da pagina fica com o titulo "${TITLE_ELETRONICOS}"
    Title Should Be    title=${TITLE_ELETRONICOS}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Wait Until Element Is Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]

Digitar o nome de produto "${PRODUTO_BUSCA}" no campo de pesquisa
    Input Text    locator=//input[contains(@type,'text')]    text=${PRODUTO_BUSCA}

Clicar no botão de pesquisa
    Click Button    locator=nav-search-submit-button

Verificar o resultado da pesquisa, listando o produto pesquisado
    Wait Until Element Contains    locator=${RESULT_BUSCA}    text=Xbox
