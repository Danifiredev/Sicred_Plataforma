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
    Click Element    ${SIMULA_FIPE}   
    Sleep    2s
    Click Element    ${ENVIAR_CPF} 
    Sleep    3s  
    Click Element    ${MARCA}
    Sleep    1s
    Click Element    ${FIAT}
    Sleep    1s
    Click Element    ${MODELO}
    Sleep    1s
    Click Element    ${ARGO} 
    Sleep    1s
    Click Element    ${ANO}
    Sleep    1s
    Click Element    ${2019}
    Sleep    1s
    Click Element    ${ENVIAR_CPF}
    Sleep    5s
    Click Element    ${VER_SIMULACAO}
    Sleep    3s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    5s
    Click Element    ${CONTINUAR_CONTRATACAO} 
    Sleep    3s
    Click Element    ${ANO_FABRICACAO}
    Input Text    ${ANO_FABRICACAO}    2019
    Sleep    1s
    Input Text    ${COR}    Vermelho
    Scroll Element Into View     ${CONINUAR_ETAPA_COR}
    Click Element                 ${CONINUAR_ETAPA_COR}

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