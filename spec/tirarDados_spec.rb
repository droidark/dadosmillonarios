require "./lib/apuesta"
describe Apuesta do

  it "El jugador tira dados y sale 2" do
      #arrange
      numero = Apuesta.new
      #act
      resultado = numero.tirarDados  false
      #Assert
      resultado.should == 2
  end
end
