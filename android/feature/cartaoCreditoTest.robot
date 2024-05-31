*** Settings ***
Resource    ../../base.robot
Resource    ../page/cartaoCreditoPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***
CT001 - Acessar fatura do cartão 
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Entao tem acesso as informaçoes de sua Fatura

CT002 - Acessar opçoes do cartão
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Entao tem acesso as opcoes do cartao

CT003 - Acessar opçoes do cartão
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Entao tem acesso ao limite disponivel do cartao

CT004 - Acessar ultimos lancamentos do cartao
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Entao tem acesso aos ultimos lancamentos

CT005 - Acessar campo pesquisa
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Entao o botao lupa deve estar desabilitado 

CT006 - Acessar campo duvida
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Entao o botao duvida deve estar desabilitado  

CT007 - Acessar campo voltar
    Dado que o cliente acessou a pagina inicial
    Quando clica na opcao cartao de credito
    Quando clica no botao voltar
    Entao deve voltar para pagina inicial  



