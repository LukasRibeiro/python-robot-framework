# importação das bibliotecas para utilização no script
*** Settings ***
Library        SeleniumLibrary

# declara variaveis que tem valores constantes
*** Variables ***
${BROWSER}             chrome
${url}    https://www.amazon.com.br/
${menu_mais_vendidos}    //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]
${link_ver_mais}    //a[@aria-label='Mais Vendidos em Dispositivos Amazon e Acessórios - Ver mais'][contains(.,'Ver mais')]
${titulo_mais_vendidos}    zg_banner_text
${subtitulo_mais_vendidos}    zg_banner_subtext

# implementação das keyswords
*** Keywords ***

Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
options=add_experimental_option("detach", True)

Fechar o navegador
    Close Browser
    Capture Page Screenshot

Acessar a homepage do site da amazon
    Go To    url=${url}
    Wait Until Element Is Visible    locator=${menu_mais_vendidos}

Entrar no menu mais vendidos
    Click Element    locator=${menu_mais_vendidos}
    Click Link    locator=${link_ver_mais}

Verificar se aparece o titulo "Mais vendidos"
    Wait Until Element Is Visible    locator=${titulo_mais_vendidos}
    Wait Until Element Is Visible    locator=${subtitulo_mais_vendidos}

Verificar o titulo da pagina deve ser "${titulo_da_pagina}"
    Title Should Be    title=${titulo_da_pagina}

Digitar o nome de produto "${produto}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox   text=${produto}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa, listando o produto "${produto_pesquisado}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${produto_pesquisado}')])[2]

#GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a homepage do site da amazon

Quando acessar o menu "Mais vendidos"
    Entrar no menu mais vendidos
    
Então o título da página deve ficar "Mais vendidos"
    Verificar se aparece o titulo "Mais vendidos"

E o texto "${titulo_da_pagina}" deve ser exibido na página
    Verificar o titulo da pagina deve ser "${titulo_da_pagina}"

Quando pesquisar pelo produto "${produto}"
    Digitar o nome de produto "${produto}" no campo de pesquisa
    Clicar no botão de pesquisa

Entao um produto da linha "${produto_pesquisado}" deve ser mostrado na página
    Verificar o resultado da pesquisa, listando o produto "${produto_pesquisado}"

E o título da página deve ficar "${titulo_da_pagina}"
    Verificar o titulo da pagina deve ser "${titulo_da_pagina}"