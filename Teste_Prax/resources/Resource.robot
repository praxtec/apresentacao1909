*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${URL}       https://accounts.google.com/
${ROBOT_BROWSER}   chrome

*** Keywords ***
Abrir Sessao
  Open Browser  ${URL}  ${ROBOT_BROWSER}
  Maximize Browser Window

Fechar Navegador
  Close Browser
