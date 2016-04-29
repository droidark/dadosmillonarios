Feature:
Como Juanito
Quiero tirar los dados
Para jugar

Scenario: Juanito tira los dados
Given inicia la aplicacion
When haga click en tirar dados
Then debo ver "2"
