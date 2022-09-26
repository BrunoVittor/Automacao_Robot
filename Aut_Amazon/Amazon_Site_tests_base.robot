*** Settings ***
Resource        Amazon_Resources.robot
Test Setup      Open Chrome
Test Teardown   Close Chrome

*** Test Cases ***

Case 01 - Acessar a página eletrônicos no site da Amazon  
    Dado que o usuário esteja no site da Amazon
    Quando o usuário expandir o menu todos 
    E clicar em mais vendidos
    Então acessar a categoria de eletrônicos
    
Case 02 - Adicionar o produto ao carrinho
    Dado que o usuário esteja no menu eletrônicos
    Quando o usuário selecionar o produto EcoDot
    E adicionar o produto no carrinho
    E acessar o carrinho
    Então aumenta a quantidade do produto no carrinho
    
Case 03 - Fechar o pedido no carrinho
    Dado que o usuário esteja no menu eletrônicos
    Quando o usuário adiciona o produto no carrinho
    Então fecha o pedido