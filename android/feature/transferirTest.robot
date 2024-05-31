*** Settings ***
Resource    ../../base.robot
Resource    ../page/transferirPage.robot
Resource    ../page/cartaoCreditoPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***

CT001 - Acessar opcao transferir
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao transferir
    Entao deve visualizar o campo de inserir valor da transferencia

CT002 - Acessar opcao voltar pagina 
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao voltar
    Entao deve voltar a pagina inicial    
