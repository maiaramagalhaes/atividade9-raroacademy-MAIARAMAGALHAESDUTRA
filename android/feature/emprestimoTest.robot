*** Settings ***
Resource    ../../base.robot
Resource    ../page/emprestimoPage.robot
Resource    ../page/cartaoCreditoPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***

CT001 - Realizar emprestimo
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao emprestimo
    Entao observa o valor disponivel para emprestimo

CT002 - Saber valor emprestimo
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao emprestimo
    Entao observa que o valor do emprestimo pode variar

CT003 - Entender emprestimo
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao emprestimo
    Entao observa a opcao entenda como funciona

CT004 - Realizar novo emprestimo
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao emprestimo
    Entao observa a opcao novo emprestimo

CT005 - Saber se possui emprestimo ativo
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao emprestimo
    Entao observa que nao possui emprestimo ativo    


    

