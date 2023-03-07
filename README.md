# robotframework
Destinado para estudos do robotframework na automação de testes.
Foi utilizado como base o site para amazon para estudos.

# Instalação
- dependecy:
  - python > 3.X: Download em "https://www.python.org/", necessário incluir no "path" do sistema operacional.
  - robotframework: Instalação via linha do comando no terminal, digitar: "pip install robotframework". GetStarted em https://robotframework.org/?tab=1#getting-started. 
  - SeleniumLibrary: É uma Library do robotframework. Instalação via linha do comando no terminal, digitar:  pip install --upgrade robotframework-seleniumlibrary
  -Ter disponivel webdriver na maquina, chromedrive ou gekodrive de acordo com a versão do navegador.

# Execução do projeto
- Acessar a pasta /webtesting via terminal
- Digitar: 
    - Para executar a suite de testes: "robot -d results **amazon_tests.robot**" e teclar Enter
    - Para Executar um teste especifico: "robot -t **"nome do caso de caste"** -d results amazon_test.robot"
      - Exemplo de execução de um teste especifico: "robot -t **"Test Case 02 - Pesquisa de um produto"** -d results amazon_tests.robot"
    - Para executar baseados nas [TAGS]: "robot -i **tag** -d results amazon_tests.robot"
      - Exemplo de execução baseado na tag: "robot -i **menus** -d results amazon_tests.robot"
    - Para executar todos os testes menos um baseado na tag: "robot -e **tag** -d results amazon_tests.robot"
      - Exemplo de execução excluindo um teste através da tag: "robot -e **menus** -d results amazon_tests.robot"
    - Para executar em navegador diferente do default(chrome): "robot -v **BROWSER:firefox** -d results amazon_tests.robot". Necessário webdriver.
# Verificando resultados
- Após execução dos testes é gerado automaticamente um relatório dentro da pasta webtesting.