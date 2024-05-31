*** Settings ***
Resource    ../../base.robot


*** Variables ***

${BOTAO_DEPOSITO}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${OPCAOES_DEPOSITO}          xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]  
${PIX}                       xpath=//android.view.View[contains(@content-desc,"Pix")] 
${BOLETO}                    xpath=//android.view.View[contains(@content-desc,"Boleto")] 
${TED_DOC}                   xpath=//android.view.View[contains(@content-desc,"TED/DOC")]
${TRAZER_SALARIO}            xpath=//android.view.View[contains(@content-desc,"Trazer seu salário")]
${BOTAO_CANCELAR}            xpath=//android.widget.Button


*** Keywords ***

Quando aperta o botao depositar
    Click Element    ${BOTAO_DEPOSITO}
Entao verifica opcoes de deposito
    Element Should Be Visible    ${OPCAOES_DEPOSITO} 


Entao verifica opcao de deposito por pix
    Element Should Be Visible    ${PIX}
     

 Entao verifica opcao de deposito por boleto 
    Element Should Be Visible    ${BOLETO}    

Entao verifica opcao de deposito por TED/DOC
    Element Should Be Visible    ${TED_DOC}

Entao verifica opcao de migrar o salario para conta
    Element Should Be Visible    ${TRAZER_SALARIO}

Quando aperta o botao cancelar
    Click Element                ${BOTAO_CANCELAR}           
Entao volta para a paginal inicial     
    Element Should Be Visible    ${ICONE_PESSOA}