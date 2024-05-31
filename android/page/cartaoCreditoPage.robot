*** Settings ***
Resource    ../../base.robot
Resource    ../page/cartaoCreditoPage.robot

*** Variables ***
${BOTAO_CARTAO_CREDITO}        xpath=//android.view.View[contains(@content-desc,"Cartão de Crédito")]
${FATURA_ATUAL}                xpath=//android.view.View[@content-desc="Fatura atual"]
${LIMITE_DISPONIVEL}           xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"] 
${OPCOES_CARTAO}               xpath=//android.widget.HorizontalScrollView 
${PAGAMENTO}                   xpath=//android.view.View[contains(@content-desc,"Pagamento recebido")]
${SUPERMERCADO}                xpath=//android.view.View[contains(@content-desc,"Supermercado")]
${TRANSFERENCIA}               xpath=//android.view.View[contains(@content-desc,"Transferência")]
${BOTAO_LUPA}                  xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${BOTAO_DUVIDA}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]
${BOTAO_VOLTAR}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***

Quando clica na opcao cartao de credito
    Click Element    ${BOTAO_CARTAO_CREDITO} 
Entao tem acesso as informaçoes de sua Fatura
    Element Should Be Visible    ${FATURA_ATUAL}

Entao tem acesso ao limite disponivel do cartao
    Element Should Be Visible    ${LIMITE_DISPONIVEL}
    
Entao tem acesso as opcoes do cartao
    Element Should Be Visible    ${OPCOES_CARTAO} 

Entao tem acesso aos ultimos lancamentos
    Swipe By Percent    50    50    50    -10
    Element Should Be Visible    ${PAGAMENTO}
    Element Should Be Visible    ${SUPERMERCADO}
    Element Should Be Visible    ${TRANSFERENCIA}

Entao o botao lupa deve estar desabilitado 
    Element Should Be Visible    ${BOTAO_LUPA} 

Entao o botao duvida deve estar desabilitado    
    Element Should Be Visible    ${BOTAO_DUVIDA}

Quando clica no botao voltar
    Click Element    ${BOTAO_VOLTAR} 
Entao deve voltar para pagina inicial 
    Element Should Be Visible    ${ICONE_PESSOA}    

    
