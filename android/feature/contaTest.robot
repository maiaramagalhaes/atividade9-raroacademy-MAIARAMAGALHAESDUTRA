*** Settings ***
Resource    ../../base.robot
Resource    ../page/contaPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


  

*** Test Cases ***


CT001 - Confirmar saldo da conta
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Entao confirma o saldo disponivel da conta

CT002 - Confirmar dinheiro guardado da conta
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Entao confirma o dinheiro guardado da conta

CT003 - Confirmar o rendimento da conta
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Entao confirma o rendimento da conta

CT004 - Confirmar as trasacoes da conta
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Entao confirma as transacoes da conta

CT005 - Confirmar opcaodeposito
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Quando seleciona a opcao depositar
    Entao confirma as opcoes de deposito   

CT005 - Confirmar opcao de pagamentos
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Quando seleciona a opcao pagar
    Entao confirma as opcoes de pagamento

CT006 - Confirmar opcao de transferencia
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Quando seleciona a opcao transferir
    Entao deve ser confirmado o valor da transferencia

CT007 - Confirmar opcao de receber
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Quando seleciona a opcao cobrar
    Entao deve ser confirmado o valor a receber    

CT008 - Confirmar historico da conta
    Dado que o cliente acessou a pagina inicial
    Quando seleciona a opcao conta
    Quando arrasta a tela para cima
    Entao confirma o historico da conta




