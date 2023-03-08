*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.busca_produtos
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador

*** Test Cases ***
Test Case 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...                e verifica categoria Computadores e Informática
    [Tags]             menus  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E a categoria "Computadores e Informática" deve ser exibida na página

Test Case 02 - Pesquisa de um produto
    [Documentation]    Esse testes verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então um produto da linha "Xbox Series S" deve ser mostrado na página
    E o título da página deve ficar "Amazon.com.br : Xbox Series S"