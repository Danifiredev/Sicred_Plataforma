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
    Input Text    ${COR}    Azul
    Sleep    1s
    Input Text    ${CHASSI}    9C2JC4130BR100747
    Sleep    1s
    Input Text    ${PLACA}     PFA4700
    Sleep    2s
    Click Element    ${RENAVAM}
    Press Keys       ${RENAVAM}    27351469511
    Sleep    2s
    Scroll Element Into View     ${CONINUAR_ETAPA_COR}
    Click Element            ${CONINUAR_ETAPA_COR}
    Sleep    2s
    Wait Until Element Is Visible    ${ALERTA_VEICULO_NOVO}    timeout=10s
    Click Element                    ${ALERTA_VEICULO_NOVO}
    sleep     10s
    Scroll Element Into View    ${CONFIRMAR_DADOS_CONTRATACAO}
    Click Element    ${CONFIRMAR_DADOS_CONTRATACAO}
    Sleep    2s    
    Click Element    ${PULAR_CAF} 
    Sleep    35s
    Click Element    ${ENVIO_DOCUMENTOS}
    Sleep    3s
    Choose File    xpath=//input[@type='file']        ${CURDIR}\\qr_code.png
    Choose File    xpath=//h3[contains(.,'QR Code para anexar')]/following::input[@type='file'][1]    ${CURDIR}\\qr_code.png
    Sleep    2s
    Choose File    xpath=//h3[contains(.,'CRLV para anexar')]/following::input[@type='file'][1]    ${CURDIR}\\qr_code.png
    Sleep    2s
    Choose File    xpath=//h3[contains(.,'Foto do Veículo para anexar')]/following::input[@type='file'][1]    ${CURDIR}\\qr_code.png
    #Reload Page
    Sleep    3s
    Click Element    ${HISTORICO}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight) 
    Sleep  2s
    Execute Javascript    window.scrollTo(0, 0)
    Sleep    2s
    Click Element    ${ASSINATURA_CONTRATO}
    Sleep    2s
    Click Element    ${ENVIO_DOCUMENTOS}
    Execute Javascript    window.scrollTo(0, 0)
    
    
    Click Element    ${SOLICITA_PGTO} 
    Sleep    10s



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