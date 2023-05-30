*** Settings ***
Documentation   Esta suite testa o site da amazon.com.br
Resource        amazon_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Mais vendidos"

  [Documentation]       Este teste verifica o menu eletronicos no site da amazon
  [Tags]                menus   mais vendidos
  Acessar a homepage do site da amazon
  Entrar no menu mais vendidos
  Verificar se aparece o titulo "Mais vendidos"
  Verificar o titulo da pagina deve ser "Amazon.com.br Mais Vendidos: Dispositivos Amazon e Acessórios - os mais vendidos na Amazon.com.br"

Caso de teste 02 - Pesquisa de produto
  [Documentation]   Este teste verifica a busca de um produto
  [Tags]            busca_um_produto    lista_busca
  Acessar a homepage do site da amazon
  Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
  Verificar o resultado da pesquisa, listando o produto "Console Xbox Series S"
