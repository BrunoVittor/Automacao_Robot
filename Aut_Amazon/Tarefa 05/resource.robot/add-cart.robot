*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    SikuliLibrary

*** Variables ***
# ${browser}               chrome
# ${amazon_url}            https://www.amazon.com.br
# ${menu_all}              //a[@id='nav-hamburger-menu']
# ${mais_vendidos}         //a[@href='/gp/bestsellers/?ref_=nav_em_cs_bestsellers_0_1_1_2']
# ${eletronicos}           //a[@href='/gp/bestsellers/electronics/ref=zg_bs_nav_0'][contains(.,'Eletrônicos')]
${produto_container}     //div[@class='_cDEzb_p13n-sc-css-line-clamp-3_g3dy1'][contains(.,'Echo Dot (4ª Geração): Smart Speaker com Alexa - Cor Preta')]
# ${produto}               //div[@class='_cDEzb_p13n-sc-css-line-clamp-3_g3dy1'][contains(.,'Echo Dot (4ª Geração): Smart Speaker com Alexa | Música, informação e Casa Inteligente - Cor Preta')]
${produto}               //div[@class='_cDEzb_p13n-sc-css-line-clamp-3_g3dy1'][contains(.,'Echo Dot (4ª Geração): Smart Speaker com Alexa - Cor Preta')]
${acessar_carrinho}      //input[contains(@name,'submit.add-to-cart')]
${carrinho}              //a[contains(.,'Ir para o carrinho')]
${quantidade}            //span[contains(@data-csa-c-func-deps,'aui-da-a-dropdown-button')]
${aumenta_quantidade}    //*[@id="quantity_2"]
${diminui_quantidade}    //*[@id="quantity_1"]       
${fechar}                //input[@name='proceedToRetailCheckout']

*** Keywords ***
    
Quando o usuário selecionar o produto EcoDot
    Execute Javascript    window.scrollTo(0, window.scrollY+1200)
    Sleep    3s
    Click Element    locator=${produto}

E adicionar o produto no carrinho
    Wait Until Element Is Visible    locator=${acessar_carrinho}
    Click Element    locator=${acessar_carrinho}
    
E acessar o carrinho
    Wait Until Element Is Visible    locator=${carrinho}
    Click Element    locator=${carrinho}

Então aumenta a quantidade do produto no carrinho
    Click Element    locator=${quantidade}
    Wait Until Element Is Visible    locator=${aumenta_quantidade}
    Click Element    locator=${aumenta_quantidade}

# Case 03 - Fechar o pedido no carrinho
Quando o usuário adiciona o produto no carrinho
    Quando o usuário selecionar o produto EcoDot
    E adicionar o produto no carrinho
    E acessar o carrinho
    Então aumenta a quantidade do produto no carrinho

Então fecha o pedido
    Wait Until Element Is Visible    locator=${fechar}
    Click Element    locator=${fechar}

