require "./lib/apuesta"
describe Apuesta do

  it "El jugador selecciona 4" do
      #arrange
      numero = Apuesta.new
      #act
      resultado = numero.validaNumero 4
      #Assert
      resultado.should == 4
  end
end
