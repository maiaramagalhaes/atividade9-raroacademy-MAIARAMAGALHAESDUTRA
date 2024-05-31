*** Settings ***
Resource    ../../base.robot
Resource    ../page/doacaoPage.robot

*** Variables ***

${DOACAO}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]



*** Keywords ***
Entao deve conseguir visualizar a opcao doacao
    Swipe By Percent    50    50    -75    50
    Element Should Be Visible    ${DOACAO}
