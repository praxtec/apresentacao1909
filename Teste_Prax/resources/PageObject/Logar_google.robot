*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${LOGIN}     name=identifier
${PASSWORD}  name=Passwd
${TIMEOUT}           60s

*** Keywords ***
## Caso de Teste 01: Logar no google 

Dado que eu efetue o login
  Wait Until Element Is Visible  ${LOGIN}
  Input Text                     ${LOGIN}     praxtestesqa@gmail.com
  Click Element                  xpath=//*[@id="identifierNext"]
  Wait Until Element Is Visible  ${PASSWORD}                           ${TIMEOUT}
  Input Text                     ${PASSWORD}  prax@208                                

Quando eu logar
  Wait Until Element Is Visible  xpath=//*[@id="passwordNext"]//button  ${TIMEOUT}
  Click Element                  xpath=//*[@id="passwordNext"]//button  

Então eu devo verificar se a página Home foi exibida
  Wait Until Element Is Visible    xpath=//*[contains(text(), 'Prax Testando QA')]  ${TIMEOUT}
  Capture Page Screenshot