*** Settings ***
Resource  ../resources/Resource.robot
Resource  ../resources/PageObject/Logar_google_invalido.robot
Suite Setup          Abrir Sessao
# Suite Teardown       Fechar Navegador

*** Test Case ***

Caso de Teste 01: Login invalido 
  Dado que eu efetue o login invalido
  Quando eu tentar logar
  Então deve ser exibido uma mensagem de erro