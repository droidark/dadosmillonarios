require "./lib/apuesta"
describe Apuesta do

  it "El jugador tira dados y sale 3" do
      #arrange
      numero = Apuesta.new
      #act
      valorDado = numero.tirarDados  false
      resultado = numero.validarPartida valorDado,3
      #Assert
      resultado.should == 'sigue participando'
  end
end
