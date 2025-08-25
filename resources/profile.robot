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
${FIAT}                            xpath=//div[contains(@class,'v-menu')]//div[contains(.,'Fiat')]
${MODELO}                        xpath=//div[label[contains(text(),'Modelo')]]//input
${ARGO}                         xpath=//div[contains(@class,'v-menu')]//div[contains(.,'ARGO 1.0 6V Flex')]
${ANO}                          xpath=//div[label[contains(text(),'Ano')]]//input
${2019}                         xpath=//div[contains(@class,'v-menu')]//div[contains(.,'2019')]
${VER_SIMULACAO}                //span[contains(.,' VER SIMULAÇÃO ')]
${ANO_FABRICACAO}                xpath=(//input[contains(@type,'text')])[1]
${COR}                           xpath=(//input[contains(@type,'text')])[2]
${CONINUAR_ETAPA_COR}            //button[contains(.,' CONTINUAR ')]
${CHASSI}                           //input[@maxlength='17']
${PLACA}                           xpath=//label[contains(text(),'Placa')]/following-sibling::input
${RENAVAM}                         //*[@id="app"]/div[1]/div[2]/div[2]/div[2]/form/div[1]/div[1]/div[2]/div/div[2]/div[4]/div[1]/div/div[1]
${ALERTA_VEICULO_NOVO}            xpath=//span[contains(.,' Está correto ')]
${UPLOAD_QRCODE}                    //center[contains(.,'Formato permitido: JPG, PDF e PNG')]
${ENVIO_DOCUMENTOS}                xpath=//strong[contains(normalize-space(.),'Envio de Documentos')]




###################################### Variaveis Validacao CNH###################################################################
${VALIDA_CNH}                      //strong[contains(.,' Validação da CNH ')]
${PULAR_CAF}                      xpath=//span[normalize-space(text())='PULAR CAF']
