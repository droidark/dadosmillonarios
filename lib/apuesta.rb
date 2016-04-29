class Apuesta
  def validaNumero numero
    numero
  end
  def tirarDados bandera

    if bandera==true
    dado1=rand(1..6)
    dado2=rand(1..6)
    resultado=dado1+dado2
  else
    resultado=2
  end
  end
end
