*** Settings ***
Resource    ../../base.robot


*** Variables ***

${PAGAR_BOTAO}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${PAGAR_COM_PIX}              xpath=//android.view.View[contains(@content-desc,"Pagar com Pix")] 
${PAGAR_FATURA_CARTAO}        xpath=//android.view.View[contains(@content-desc,"Pagar fatura do cartão")] 
${PAGAR_BOLETO}               xpath=//android.widget.FrameLayout[contains(@resource-id,"android:id/content")]
${VOLTAR}                     xpath=//android.widget.Button


*** Keywords ***

Quando ele clicar na opcao pagar
    Click Element    ${PAGAR_BOTAO} 
Entao ele deve perceber as opcoes de pagamento
    Element Should Be Visible    ${PAGAR_COM_PIX}
    Element Should Be Visible    ${PAGAR_FATURA_CARTAO}
    Element Should Be Visible    ${PAGAR_BOLETO} 

Quando ele clicar no botao voltar
    Click Element    ${VOLTAR}
Entao ele deve voltar para a pagina inicial
    Element Should Be Visible     ${ICONE_PESSOA}  