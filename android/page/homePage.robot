*** Settings ***
Resource    ../../base.robot
Resource    ../page/homePage.robot
Library    XML

*** Variables ***

${MSG_OLA}                      accessibility_id=Olá, Breno Freitas

${ICONE_PESSOA}                 xpath=//android.widget.ScrollView/android.view.View[1]
${MENU_CARROCEL}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]  
${BOTAO_MEU_CARTOES}            xpath=//android.view.View[@content-desc="Meus cartões"]
${BOTAO_LIMITE_EMPRESTIMO}      xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]                       
${BOTAO_CARTAO}                 xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${BOTAO_EMPRESTIMO}             xpath=//android.view.View[contains(@content-desc,"Empréstimo")]
${BOTAO_INVESTIMENTOS}          xpath=//android.view.View[contains(@content-desc,"Investimentos")]
${BOTAO_SEGURO_DE_VIDA}         xpath=//android.view.View[contains(@content-desc,"Seguro de vida")]
${BOTAO_DESCUBRA_MAIS}          xpath=//android.view.View[@content-desc="Descubra mais"]
${BOTAO_PIX}                    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BOTAO_PAGAR}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BOTAO_TRANSFERIR}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BOTAO_DEPOSITAR}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]  
${BOTAO_EMPRESTIMOS}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${BOTAO_RECARGA_CELULAR}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BOTAO_COBRAR}                 xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]   
${BOTAO_DOACAO}                 xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTAO_ENCONTAR_AMIGOS}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5] 
${BOTAO_OCULTAR_SALDO}          xpath=//android.widget.ScrollView/android.widget.Button[1]
${BOTAO_CONTA}                  xpath=//android.view.View[@content-desc="Conta"]
${BOTAO_DUVIDAS}                xpath=//android.widget.ScrollView/android.widget.Button[2]
${BOTAO_ENVELOPE}               xpath=//android.widget.ScrollView/android.widget.Button[3]
${BOTAO_CONQUISTE_PLANOS}       xpath=//android.view.View[contains(@content-desc,"Conquiste planos futuros")]
${BOTAO_WHATSAPP}               xpath=//android.view.View[contains(@content-desc,"WhatsApp")]
${BOTAO_INDIQUE_AMIGOS}         xpath=//android.view.View[contains(@content-desc,"Indique seus amigos")]
                                
                                                
*** Keywords ***

Dado que o cliente acessou a pagina inicial
    Wait Until Element Is Visible    ${ICONE_PESSOA}     10
Entao ele deve visualizar seu nome 
    Element Should Be Visible  ${MSG_OLA}    

Entao ele deve visualizar o menu de atalhos
    Element Should Be Visible    ${MENU_CARROCEL}

Entao ele deve visualizar o botao meus cartoes
    Element Should Be Visible    ${BOTAO_MEU_CARTOES} 

Entao ele deve visualizar o botao limite disponivel para emprestimo 
   Element Should Be Visible    ${BOTAO_LIMITE_EMPRESTIMO}  

Entao ele deve visualizar o botao cartao de credito           
    Element Should Be Visible      ${BOTAO_CARTAO} 

Entao deve visualizar o botao emprestimo  
    Swipe By Percent    50    50    50    -75
    Element Should Be Visible    ${BOTAO_EMPRESTIMO} 

Entao deve visualizar o botao investimentos
    Swipe By Percent    50    50    50    -75
    Element Should Be Visible    ${BOTAO_INVESTIMENTOS}

Entao deve visualizar o botao seguro de vida
    Swipe By Percent    50    50    50    -75
    Element Should Be Visible    ${BOTAO_SEGURO_DE_VIDA}

Entao deve visualizar o opcao descubra mais
    Swipe By Percent    50    50    50    -75
    Element Should Be Visible    ${BOTAO_DESCUBRA_MAIS}

Entao deve visualizar as opcoes do carrocel de atalhos
    Element Should Be Visible    ${BOTAO_PIX}
    Element Should Be Visible    ${BOTAO_PAGAR}
    Element Should Be Visible    ${BOTAO_TRANSFERIR}
    Element Should Be Visible    ${BOTAO_DEPOSITAR}
    Element Should Be Visible    ${BOTAO_EMPRESTIMOS}
    Swipe By Percent    50    50    -5    50
    Element Should Be Visible    ${BOTAO_RECARGA_CELULAR}
    Element Should Be Visible    ${BOTAO_COBRAR}
    Element Should Be Visible    ${BOTAO_DOACAO}
    Element Should Be Visible    ${BOTAO_ENCONTAR_AMIGOS}    

Quando clica no botao ocultar saldo
    Click Element    ${BOTAO_OCULTAR_SALDO}    
Entao o saldo nao ser visualizado
    Element Should Be Visible    ${BOTAO_CONTA}

Entao deve visualizar a opcao duvidas
    Element Should Be Visible    ${BOTAO_DUVIDAS} 

Entao deve visualizar a opcao resgatar amigos
    Element Should Be Visible    ${BOTAO_ENVELOPE} 

Entao ele deve visualizar o botao conquiste planos
    Element Should Be Visible    ${BOTAO_CONQUISTE_PLANOS}

Entao ele deve visualizar a opcao WhatsApp 
    Swipe By Percent    50    50    50    -75
    Element Should Be Visible    ${BOTAO_WHATSAPP}     

Entao ele deve visualizar a opcao indique seus amigos
    Swipe By Percent    50    50    50    -75
    Element Should Be Visible    ${BOTAO_INDIQUE_AMIGOS}    




    
              
   
        