Feature:
  como apostardor
  quiero ingresar la cantidad que deseo apostar
  para iniciar a jugar

Scenario: ingresar la cantidad a apostar
  Given inicia la aplicacion
  When ingreso "cantidad"
  Then deseo ver "validar"
