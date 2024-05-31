*** Settings ***
Resource    ../../base.robot
Resource    ../page/depositoPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***

CT001 - Realizar deposito
    Dado que o cliente acessou a pagina inicial
    Quando aperta o botao depositar
    Entao verifica opcoes de deposito

CT002 - Realizar deposito via pix
    Dado que o cliente acessou a pagina inicial
    Quando aperta o botao depositar
    Entao verifica opcao de deposito por pix   

CT003 - Realizar deposito via boleto
    Dado que o cliente acessou a pagina inicial
    Quando aperta o botao depositar
    Entao verifica opcao de deposito por boleto 

CT004 - Realizar deposito via TED/DOC
    Dado que o cliente acessou a pagina inicial
    Quando aperta o botao depositar
    Entao verifica opcao de deposito por TED/DOC

CT005 - Realizar migracao de salario 
    Dado que o cliente acessou a pagina inicial
    Quando aperta o botao depositar
    Entao verifica opcao de migrar o salario para conta 

CT006 - Voltar pagina inicial 
    Dado que o cliente acessou a pagina inicial
    Quando aperta o botao depositar
    Quando aperta o botao cancelar
    Entao volta para a paginal inicial        
