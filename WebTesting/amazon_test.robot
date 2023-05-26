*** Test Cases ***

*** Settings ***
Documentation   Esta suite testa o site da amazon.com.br
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

Caso de teste 01 - Acesso ao menu "Eletrônicos"
  [Documentation]       Este teste verifica o menu eletronicos no site da amazon
  [Tags]                menus   categorias
  Acessar a homepage do site da amazon
  Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
  Verificar se aparece a frase "Eletrônicos e Tecnologia"
  Verificar se aparece a categoria "Computadores e Informática"


Caso de teste 02 - Pesquisa de produto
  [Documentation]   Este teste verifica a busca de um produto
  [Tags]            busca_um_produto    lista_busca
  Acessar a home page do site Amazon.com.br
  Digitar o nome de produto "Xbox Series S" no campo de pesquisa
  Clicar no botão de pesquisa
  Verificar o resultado da pesquisa, listando o produto pesquisado
