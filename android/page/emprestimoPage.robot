*** Settings ***
Resource    ../../base.robot
Resource    ../page/emprestimoPage.robot

*** Variables ***
${BOTAO_EMPRESTIMO}           xpath=//android.view.View[@content-desc="Investimentos A revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital."]
${VALOR_DISPONIVEL}           xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"] 
${VALOR_VARIAVEL}             xpath=//android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]   
${ENTENDA_COMO_FUNCIONA}      xpath=//android.view.View[@content-desc="Entenda como funciona >"]  
${NOVO_EMPRESTIMO}            xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${EMPRESTIMO_ATIVO}           xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."] 
${BOTAO_DUVIDA}               xpath=//android.widget.Button[2] 
${BOTAO_VOLTAR}               xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[1] 

*** Keywords ***

Quando clica na opcao emprestimo
    Swipe By Percent    50    50    50    -10
    Click Element    ${BOTAO_EMPRESTIMO} 
Entao observa o valor disponivel para emprestimo
    Element Should Be Visible    ${VALOR_DISPONIVEL} 
    
Entao observa que o valor do emprestimo pode variar
    Element Should Be Visible    ${VALOR_VARIAVEL}

Entao observa a opcao entenda como funciona
    Element Should Be Visible     ${ENTENDA_COMO_FUNCIONA}
    Element Should Be Enabled     ${ENTENDA_COMO_FUNCIONA}
   

Entao observa a opcao novo emprestimo
    Element Should Be Visible    ${NOVO_EMPRESTIMO}
    Element Should Be Disabled    ${NOVO_EMPRESTIMO}

Entao observa que nao possui emprestimo ativo
    Element Should Be Visible     ${EMPRESTIMO_ATIVO}
    

         
