*** Settings ***
Library    abrir_navegador.py

*** Test Cases ***
Cenário 01 - abrir navegador na página do google
    Abrir navegador "https://www.google.com.br"

Cenário 02 - abri navegador na página da amazon
    Abrir navegador "https://www.amazon.com.br"

*** Keywords ***
Abrir navegador "${browser}"
    open_browser     ${browser}