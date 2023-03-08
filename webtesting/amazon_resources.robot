*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}                    chrome
${URL}                        http://www.amazon.com.br
${MENU_ELETRONICOS}           //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}         //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXT_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia
${NOME_CATEGORIA}             //img[contains(@alt,'Computadores e Informática')]

*** Keywords ***
Abrir o navegador
    Open Browser   browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se o titulo da pagina fica com o titulo "${TITLE_ELETRONICOS}"
    Title Should Be    title=${TITLE_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXT_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Wait Until Element Is Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]

Digitar o nome de produto "${PRODUTO_BUSCA}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO_BUSCA}

Clicar no botão de pesquisa
    Click Button    locator=nav-search-submit-button

Verificar o resultado da pesquisa, listando o produto "${PRODUTO_BUSCA}"
    Wait Until Element Is Visible    locator=//img[contains(@alt,'Console ${PRODUTO_BUSCA}')]    

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o titulo da pagina fica com o titulo "Eletrônicos e Tecnologia | Amazon.com.br"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, listando o produto "Xbox Series S"

E o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o titulo da pagina fica com o titulo "Amazon.com.br : Xbox Series S"

