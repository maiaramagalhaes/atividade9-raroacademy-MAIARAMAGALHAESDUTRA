*** Settings ***
Resource    ../../base.robot


*** Variables ***
${BOTAO_TRANSFERIR}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${VALOR}                       xpath=//android.widget.EditText[@text="R$ 0,00"]
${VOLTAR}                      xpath=//android.widget.Button[1]
${QR_CODE}                     xpath=//android.widget.Button[2]

*** Keywords ***

Quando clica na opcao transferir
    Click Element    ${BOTAO_TRANSFERIR} 
    
Entao deve visualizar o campo de inserir valor da transferencia
    Element Should Be Visible    ${VALOR}
    Element Should Be Visible    ${QR_CODE} 

Quando clica na opcao voltar
    Clear Text    ${VOLTAR}
Entao deve voltar a pagina inicial 
    Element Should Be Visible    ${ICONE_PESSOA}     