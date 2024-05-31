*** Settings ***
Resource    ../../base.robot



*** Variables ***
${RECARGA_CELULAR}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]     
${NUMERO_CELULAR}       xpath=//android.widget.EditText
${VOLTAR}               xpath=//android.widget.Button




*** Keywords ***

 
Quando ele acessa a pagina de recarga
    Swipe By Percent    50    50    -75    50
    Wait Until Element Is Visible    ${RECARGA_CELULAR}
    Click Element    ${RECARGA_CELULAR}

Entao deve existir o campo digitar o numero do celular
    Element Should Be Visible    ${NUMERO_CELULAR}
    Element Should Be Visible    ${VOLTAR} 


