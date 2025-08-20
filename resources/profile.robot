*** Variables ***

###################################### Variaveis Simula Credito CPF pela Placa###################################################################
${SIMULA_PLACA}                    //button[contains(.,' SIMULAR PELA PLACA ')]
${INPUTA_PLACA}                    //input[@type='text']
${VER_SIMULACAO}                   //span[contains(.,' VER SIMULAÇÃO ')]
${CONTINUAR_CONTRATACAO}           //span[contains(.,' CONTINUAR PARA CONTRATAÇÃO ')]
${CONFIRMAR_DADOS_CONTRATACAO}     //span[contains(.,' CONTINUAR ')]


###################################### Variaveis Simula Credito CPF pela FIPE ###################################################################
${BOTAO_NOVA_SIMULACAO}                 //span[contains(.,' NOVA SIMULAÇÃO ')]
${INPUTA_CPF}                          //input[@type='text']
${ENVIAR_CPF}                         //button[contains(.,' ENVIAR ')]
${SIMULA_FIPE}                       //span[contains(.,' SIMULAR PELA FIPE ')]
${MARCA}                            xpath=//div[label[contains(text(),'Marca')]]//input
${MODELO}                           xpath=//div[label[contains(text(),'Modelo')]]//input





###################################### Variaveis Validacao CNH###################################################################
${VALIDA_CNH}                      //strong[contains(.,' Validação da CNH ')]
${PULAR_CAF}                      //span[contains(.,' PULAR CAF ')]
