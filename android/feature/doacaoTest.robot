*** Settings ***
Resource    ../../base.robot
Resource    ../page/doacaoPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***
CT001 - Existir opcao de doacao
    Dado que o cliente acessou a pagina inicial
    Entao deve conseguir visualizar a opcao doacao