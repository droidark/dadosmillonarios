Feature:
  Como Juanito
  Quiero saber si gane
  Para seguir jugando

Scenario: Juanito lanza los dados
  Given inicia la aplicacion
  When haga click en tirar dados
  Then debo ver "sigue participando"
