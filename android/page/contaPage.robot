*** Settings ***
Resource    ../../base.robot


*** Variables ***

${CONTA}                      xpath=//android.view.View[contains(@content-desc,"Conta")]
${SALDO_DISPONIVEL}           xpath=//android.view.View[@content-desc="Saldo disponível"]
${DINHEIRO_GUARDADO}          xpath=//android.view.View[contains(@content-desc,"Dinheiro guardado")]  
${RENDIMENTO_CONTA}           xpath=//android.view.View[contains(@content-desc,"Rendimento total da conta")]  
${OPCOES_CONTA}               xpath=//android.widget.HorizontalScrollView
${HISTORICO_CONTA}            xpath=//android.view.View[@content-desc="Histórico"]
${TRANSFERENCIA_ENVIADA}      xpath=//android.view.View[contains(@content-desc,"Transferência")]
${DEPOSITAR}                  xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
${Pix}                        xpath=//android.view.View[contains(@content-desc,"Pix")]
${BOLETO}                     xpath=//android.view.View[contains(@content-desc,"Boleto")]   
${TED/DOC}                    xpath=//android.view.View[contains(@content-desc,"TED/DOC")]
${TRAZER_SALARIO}             xpath=//android.view.View[contains(@content-desc,"Trazer")]   
${PAGAR}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${PAGAR_PIX}                  xpath=//android.view.View[contains(@content-desc,"Pagar")] 
${PAGAR_FATURA_CARTAO}        xpath=//android.view.View[contains(@content-desc,"Pagar fatura do cartão")]
${PAGAR_BOLETO}               xpath=//android.view.View[contains(@content-desc,"Pagar um boleto")] 
${TRANSFERIR}                 xpath=//android.widget.HorizontalScrollView/android.widget.Button[3]
${VALOR_TRANSFERENCIA}        xpath=//android.widget.EditText[@text="R$ 0,00"]
${COBRAR}                     xpath=//android.widget.HorizontalScrollView/android.widget.Button[5]
${VALOR_RECEBER}              xpath=//android.widget.EditText[@text="R$ 0,00"]   
${HISTORICO}                  xpath=//android.view.View[@content-desc="Histórico"]
${TRANSFERENCIA_RECEBIDA}     xpath=//android.view.View[contains(@content-desc,"Transferência recebida")]


*** Keywords ***

Quando seleciona a opcao conta
    Click Element    ${CONTA}
Entao confirma o saldo disponivel da conta
    Element Should Be Visible    ${SALDO_DISPONIVEL}

Entao confirma o dinheiro guardado da conta
    Element Should Be Visible    ${DINHEIRO_GUARDADO}

Entao confirma o rendimento da conta
    Element Should Be Visible    ${RENDIMENTO_CONTA} 

Entao confirma as transacoes da conta
    Element Should Be Visible    ${OPCOES_CONTA}

Quando seleciona a opcao depositar
    Click Element    ${DEPOSITAR}
Entao confirma as opcoes de deposito    
    Element Should Be Visible    ${Pix} 
    Element Should Be Visible    ${BOLETO} 
    Element Should Be Enabled    ${TED/DOC}
    Element Should Be Visible    ${TRAZER_SALARIO}

Quando seleciona a opcao pagar
    Click Element    ${PAGAR}
Entao confirma as opcoes de pagamento
    Element Should Be Visible    ${PAGAR_PIX}     
    Element Should Be Visible    ${PAGAR_FATURA_CARTAO}    
    Element Should Be Visible    ${PAGAR_BOLETO} 

Quando seleciona a opcao transferir
    Click Element    ${TRANSFERIR}  
Entao deve ser confirmado o valor da transferencia
    Element Should Be Visible    ${VALOR_TRANSFERENCIA}

Quando seleciona a opcao cobrar
    Swipe By Percent    50    50    -10    50
    Click Element    ${COBRAR}
Entao deve ser confirmado o valor a receber    
    Element Should Be Visible    ${VALOR_RECEBER} 

Quando arrasta a tela para cima
    Swipe By Percent    50    50    50    -40
Entao confirma o historico da conta
    Element Should Be Visible    ${HISTORICO}
    Element Should Be Visible    ${TRANSFERENCIA_ENVIADA}
    Element Should Be Visible    ${TRANSFERENCIA_RECEBIDA} 





  

