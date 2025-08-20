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
    Click Element    ${BOTAO_ENTRAR}
    Capture Page Screenshot    login_sicred_plataforma.png
    Sleep    10s 
    

   
