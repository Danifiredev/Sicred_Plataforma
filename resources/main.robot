*** Settings ***
Library      SeleniumLibrary
#Library      faker        
Library      FakerLibrary    locale=pt_BR   
Library      random
Library      XML
Library      OperatingSystem
Library      BuiltIn 
Library      Screenshot
Resource     ./shared/setup_teardown.robot
Resource     ./shared/login_sicred_plataforma.robot


   
   