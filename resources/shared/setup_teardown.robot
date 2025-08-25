*** Settings ***
Resource    ../main.robot


*** Variables ***
${CAMPO_USUARIO}                            xpath=//input[@placeholder='E-mail']
${CAMPO_SENHA}                              xpath=//input[@placeholder='Senha']    
${BOTAO_ENTRAR}                             xpath=//span[contains(.,' Entrar ')]

*** Keywords ***
Dado que eu acesse a Sicred Plataforma Parceiro
    SeleniumLibrary.Open Browser    https://plataforma.dev.sicredipioneira.com.br/parceiro      browser=Chrome    
    Maximize Browser Window
    
    Execute Javascript  window.resizeTo(window.innerWidth * 0.1, window.innerHeight * 0.1)
    Execute JavaScript  window.localStorage.clear();
    Execute JavaScript  window.sessionStorage.clear();
    
Dado que estou logado no sistema
    SeleniumLibrary.Open Browser      https://plataforma.dev.sicredipioneira.com.br/parceiro       browser=Chrome
    Maximize Browser Window
    Execute Javascript  window.resizeTo(window.innerWidth * 0.1, window.innerHeight * 0.1)
    Execute JavaScript  window.localStorage.clear();
    Execute JavaScript  window.sessionStorage.clear();
    Sleep    5s
    Input Text        ${CAMPO_USUARIO}     admin4
    Input Text        ${CAMPO_SENHA}       sicredi@
    Click Button      ${BOTAO_ENTRAR}
    Sleep    3s

Fechar o navegador
    Close Browser
