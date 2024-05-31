*** Settings ***

Resource    ../../base.robot

*** Keywords ***
Espera o elemento
    [Arguments]    ${ELEMENTO} 
    Wait Until Element Is Visible    ${ELEMENTO}  

   

 