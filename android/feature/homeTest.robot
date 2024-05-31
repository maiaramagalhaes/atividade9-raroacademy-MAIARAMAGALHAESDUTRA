*** Settings ***
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***
CT001 - Visualizar informacoes pessoais
   Dado que o cliente acessou a pagina inicial
   Entao ele deve visualizar seu nome

CT002 - Visualizar carrocel de atalhos
   Dado que o cliente acessou a pagina inicial
   Entao ele deve visualizar o menu de atalhos 

CT003 - Visualizar a opçao meus cartoes
   Dado que o cliente acessou a pagina inicial
   Entao ele deve visualizar o botao meus cartoes           

CT004 - Visualizar a opcao emprestimos
   Dado que o cliente acessou a pagina inicial  
   Entao ele deve visualizar o botao limite disponivel para emprestimo  

CT005 - Visualizar a opcao cartao de credito
   Dado que o cliente acessou a pagina inicial
   Entao ele deve visualizar o botao cartao de credito 

CT006 - Visulizar a opcao emprestimo
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar o botao emprestimo

CT007 - Visualizar a opcao investimentos
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar o botao investimentos    

CT008 - Visualizar a opcao seguro de vida
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar o botao seguro de vida    

CT009 - Visualizar a opcao descubra mais
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar o opcao descubra mais 

CT010 - Visualizar opcoes do carroel de atalhos
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar as opcoes do carrocel de atalhos   

CT011 - Visualizar opcao ocultar saldo
    Dado que o cliente acessou a pagina inicial
    Quando clica no botao ocultar saldo
    Entao o saldo nao ser visualizado    
    
CT012 - Visualizar opcao duvidas
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar a opcao duvidas 

CT013 - Visualizar opcao resgatar amigos 
    Dado que o cliente acessou a pagina inicial
    Entao deve visualizar a opcao resgatar amigos

CT014 - Visualizar a opcao conquiste planos
   Dado que o cliente acessou a pagina inicial  
   Entao ele deve visualizar o botao conquiste planos

CT015 - Visualizar a opcao WhatsApp
   Dado que o cliente acessou a pagina inicial  
   Entao ele deve visualizar a opcao WhatsApp 

CT017 - Visualizar a opcao de indicar amigos
   Dado que o cliente acessou a pagina inicial  
   Entao ele deve visualizar a opcao indique seus amigos     
