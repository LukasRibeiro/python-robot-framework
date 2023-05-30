*** Settings ***
Documentation   Esta suite testa o site da amazon.com.br
Resource        amazon_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Mais vendidos"

  [Documentation]       Este teste verifica o menu eletronicos no site da amazon
  [Tags]                menus   mais_vendidos_BDD

  Dado que estou na home page da Amazon.com.br
  Quando acessar o menu "Mais vendidos"
  Então o título da página deve ficar "Mais vendidos"
  E o texto "Amazon.com.br Mais Vendidos: Dispositivos Amazon e Acessórios - os mais vendidos na Amazon.com.br" deve ser exibido na página

Caso de teste 02 - Pesquisa de produto

  [Documentation]   Este teste verifica a busca de um produto
  [Tags]            busca_um_produtoBDD   lista_busca

  Dado que estou na home page da Amazon.com.br
  Quando pesquisar pelo produto "Xbox Series S"
  Entao um produto da linha "Xbox Series S" deve ser mostrado na página
  E o título da página deve ficar "Amazon.com.br : Xbox Series S"

