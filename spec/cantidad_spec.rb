require './lib/cantidad'

describe Cantidad do
  it "Ingreso 5000 como cantidad a apostar" do
    cantidad = Cantidad.new
    resultado = cantidad.validaCantidad 5000
    resultado.should == "Bienvenido"
  end

end
