*** Settings ***
Resource  ../resources/Resource.robot
Resource  ../resources/PageObject/Logar_google.robot
Suite Setup          Abrir Sessao
# Suite Teardown       Fechar Navegador

*** Test Case ***

Caso de Teste 01: Logar no google 
  Dado que eu efetue o login
  Quando eu logar 
  Então eu devo verificar se a página Home foi exibida