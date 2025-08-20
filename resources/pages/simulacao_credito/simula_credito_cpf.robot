*** Settings ***
Resource    ../../main.robot
Resource    ../../profile.robot


*** Keywords ***
E crio uma nova simulacao de credito para um cliente cpf
    Click Element   ${BOTAO_NOVA_SIMULACAO}
    Sleep    1s
    Input Text      ${INPUTA_CPF}      19362729032
    Click Button    ${ENVIAR_CPF}
    Sleep    3s

E escolho simular pela fipe
    Click Element            ${SIMULA_FIPE}
    Sleep    2s
    Click Element            ${ENVIAR_CPF} 
    Sleep    3s  
    Input Text               ${MARCA}    Fiat
    Sleep    3s
    
    #PAREI AQUI#
    

    Click Element               //div[contains(@class,'v-navigation-drawer__content')]
    Input Text               ${MODELO}    ARGO 1.0 6V Flex
    Sleep    3s
     

E escolho simular pela placa do veiculo
    Click Element    ${SIMULA_PLACA}
    Sleep    2s
    Click Button     ${ENVIAR_CPF}
    Sleep    2s                         
    Input Text       ${INPUTA_PLACA}    PFA4700
    Sleep    2s
    Click Button     ${ENVIAR_CPF}
    Sleep    5s
    Click Element    ${VER_SIMULACAO} 
    Sleep    5s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5s
    Wait Until Element Is Visible    ${CONTINUAR_CONTRATACAO}
    Click Element    ${CONTINUAR_CONTRATACAO}
    Sleep    5s
    Click Element    ${CONFIRMAR_DADOS_CONTRATACAO}

E valido CNH
    Sleep    3s
    Double Click Element    ${VALIDA_CNH}
    Sleep    8s
    Click Element    ${PULAR_CAF}