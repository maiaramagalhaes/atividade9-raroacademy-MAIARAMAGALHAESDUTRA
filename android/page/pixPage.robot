*** Settings ***
Resource    ../../base.robot


*** Variables ***
${PIX_BOTAO}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${AREA_PIX}                 xpath=//android.widget.ImageView[contains(@content-desc,"Minha área Pix")]   
${PIX}                      xpath=//android.widget.ImageView[contains(@content-desc,"Minha área Pix")]
${PAGAR}                    xpath=//android.widget.ImageView[contains(@content-desc,"Minha área Pix")]
${COBRAR}                   xpath=//android.widget.ImageView[contains(@content-desc,"Minha área Pix")]
${MINHAS_CHAVES}            xpath=//android.view.View[@content-desc="Minhas chaves"]
${MEUS_LIMITES}             xpath=//android.view.View[@content-desc="Meu limite Pix"]
${ME_AJUDA}                 xpath=//android.view.View[@content-desc="Me ajuda"]
${Voltar_Pagina}            xpath=//android.widget.Button[1]



*** Keywords ***

Quando ele clicar na opcao pix
    Click Element    ${PIX_BOTAO} 
Entao ele deve ver a area pix
    Element Should Be Visible    ${AREA_PIX} 

Entao ele deve ver as opcoes da area pix
    Element Should Be Visible    ${PIX} 
    Element Should Be Visible    ${PAGAR} 
    Element Should Be Visible    ${COBRAR}

Entao ele deve ver as suas informacoes sobre pix    
    Element Should Be Visible    ${MINHAS_CHAVES}    
    Element Should Be Visible    ${MEUS_LIMITES}  

Entao ele deve ver a opcao me ajuda
    Element Should Be Visible    ${ME_AJUDA}

Quando ele clicar no botao voltar
    Click Element    ${Voltar_Pagina} 
Entao ele deve voltar para pagina inicial
    Element Should Be Visible    ${ICONE_PESSOA}    