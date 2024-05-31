*** Settings ***
Resource    ../../base.robot
Resource    ../page/pixPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***

CT001 - Confirmar area pix
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pix
    Entao ele deve ver a area pix

CT002 - Confirmar opcoes da area pix
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pix
    Entao ele deve ver as opcoes da area pix

CT003 - Confirmar informacoes do pix
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pix
    Entao ele deve ver as suas informacoes sobre pix    

CT004 - Confirmar opcao ajuda
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pix
    Entao ele deve ver a opcao me ajuda 

CT005 - Confirmar opcao voltar
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pix
    Quando ele clicar no botao voltar
    Entao ele deve voltar para pagina inicial    