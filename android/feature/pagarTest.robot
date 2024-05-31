*** Settings ***
Resource    ../../base.robot
Resource    ../page/pagarPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***


CT001 - Opcoes de pagamento
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pagar
    Entao ele deve perceber as opcoes de pagamento

CT002 - Voltar para pagina inicial
    Dado que o cliente acessou a pagina inicial
    Quando ele clicar na opcao pagar
    Quando ele clicar no botao voltar
    Entao ele deve voltar para a pagina inicial    