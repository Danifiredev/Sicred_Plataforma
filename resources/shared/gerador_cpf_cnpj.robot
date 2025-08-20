*** Settings ***
Resource      ../main.robot

*** Variables ***
${CLICA_CPF}                               //input[@type='text']
${CLICA_CNPJ}                              //input[@type='text']

*** Keywords ***
E preenche campo cpf
    Click Element                      ${CLICA_CPF}                ENTER
    ${CPF_FAKE}                        FakerLibrary.cpf
    Press Keys                         ${CLICA_CPF}                ${CPF_FAKE}

E preenche campo cnpj
    Click Element                       ${CLICA_CNPJ}             ENTER
    ${CNPJ_FAKE}                        FakerLibrary.cnpj
    Press Keys                          ${CLICA_CNPJ}             ${CNPJ_FAKE}