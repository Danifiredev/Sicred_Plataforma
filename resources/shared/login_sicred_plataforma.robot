*** Settings ***
Resource    ../main.robot

*** Variables ***
${CAMPO_USUARIO}                            xpath=//input[@placeholder='E-mail']
${CAMPO_SENHA}                              xpath=//input[@placeholder='Senha']    
${BOTAO_ENTRAR}                             xpath=//span[contains(.,' Entrar ')]

*** Keywords ***

Quando faco login com informacoes validas
    Input Text        ${CAMPO_USUARIO}     admin4
    Input Text        ${CAMPO_SENHA}       sicredi@
    Sleep  5
    # Captura o token CSRF da página
    ${_token}=    Get Value    xpath=//input[@name='_token']
    Click Element    ${BOTAO_ENTRAR}
    # Chamada de API para validar login
    ${headers}=    Create Dictionary
    ${cookies}=    Create Dictionary    refresh_cookie=JDJ5JDEwJG05TWhMS1NIdHNONlhkamZEUU5yMHVXcHFhM0VCZ3R4dFovSjVmMmQ0YU12QmlaWW10d3Nl
    ${data}=    Create Dictionary    name=admin4    password=sicredi@    _token=${_token}
    Create Session    api_sicred    https://plataforma.dev.sicredipioneira.com.br/parceiro-server    headers=${headers}    cookies=${cookies}
    ${response}=    Post Request    api_sicred    /api/auth/login    json=${data}
    Log    Status Code: ${response.status_code}
    Log    Body: ${response.text}
    Should Be Equal As Integers    ${response.status_code}    200
    #salvar o relatório
    ${tipo}=    Set Variable    login
    ${report}=    Create Dictionary    tipo=${tipo}    payload=${data}    status=${response.status_code}    body=${response.text}
    ${report_json}=    Evaluate    json.dumps(${report})    json
    Create File    api_response.json    ${report_json}
