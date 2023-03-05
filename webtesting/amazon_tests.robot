*** Test Cases ***

Test Case 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...                e verific a categoria Computadores e Informática
    [Tags]             menus  categorias
    Acessar a home page do site amazon.com.br
    Entrar no menu "Eletronicos"
    Verificar se o titulo da pagina fica com o titulo "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletronicos e Tecnologia"
    Verificar se aparece a categorias "Computadores e Informática"


Test Case 02 - Pesquisa de um produto
    [Documentation]    Esse testes verifica a busca de um produto
    [Tags]             busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, listando o produto pesquisado