*** Settings ***
Library     DiffLibrary

*** Test Cases ***
Comparar dois conteúdos
     Compare "teste_diff_01.txt" e "teste_diff_02.txt"

*** Keywords ***
Compare "${arquivo_01}" e "${arquivo_02}"
     Diff Files     ${arquivo_01}     ${arquivo_02}