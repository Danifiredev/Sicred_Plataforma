*** Settings ***
Resource    ../../main.robot
Resource    ../../pages/simulacao_credito/simula_credito_cpf.robot



*** Test Cases ***
Preenchimento de cadastro para simulacao de credito via cpf utilizando tabela Fipe
    setup_teardown.Dado que eu acesse a Sicred Plataforma Parceiro
    login_sicred_plataforma.Quando faco login com informacoes validas
    E crio uma nova simulacao de credito para um cliente cpf
    E escolho simular pela fipe

    
Preenchimento de cadastro para simulacao de credito via cpf utilizando placa do veiculo
    #Start Video Recording
    setup_teardown.Dado que eu acesse a Sicred Plataforma Parceiro
    login_sicred_plataforma.Quando faco login com informacoes validas
    E crio uma nova simulacao de credito para um cliente cpf
    E escolho simular pela placa do veiculo
    E valido CNH


