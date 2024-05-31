*** Settings ***
Resource    ../../base.robot
Resource    ../page/recargaPage.robot

Test Setup        Abrir App
Test Teardown     Teardown


*** Test Cases ***


CT001 - Realizar recarga de celular
    Dado que o cliente acessou a pagina inicial
    Quando ele acessa a pagina de recarga
    Entao deve existir o campo digitar o numero do celular

   