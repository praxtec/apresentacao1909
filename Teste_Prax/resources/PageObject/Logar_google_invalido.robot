*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${LOGIN}     name=identifier
${PASSWORD}  name=Passwd
${TIMEOUT}           60s

*** Keywords ***
## Caso de Teste 01: Login invalido 

Dado que eu efetue o login invalido
  Wait Until Element Is Visible  ${LOGIN}
  Input Text                     ${LOGIN}     praxtestesqa@gmail.com
  Click Element                  xpath=//*[@id="identifierNext"]
  Wait Until Element Is Visible  ${PASSWORD}                           ${TIMEOUT}
  Input Text                     ${PASSWORD}  teste123        

Quando eu tentar logar
  Wait Until Element Is Visible  xpath=//*[@id="passwordNext"]//button  ${TIMEOUT}
  Click Element                  xpath=//*[@id="passwordNext"]//button 

Então deve ser exibido uma mensagem de erro
  Wait Until Element Is Visible    xpath=//*[contains(text(), 'Senha incorreta')]  ${TIMEOUT}
  Capture Page Screenshot