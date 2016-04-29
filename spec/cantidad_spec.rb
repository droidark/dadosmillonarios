require '.lib/cantidad'

describe Cantidad do
  it "Ingreso 5000 como cantidad a apostar" do
    cantidad = Cantidad.new
    cantidad.validaCantidad 5000
    cantidad.should == "Bienvenido"
  end

end
