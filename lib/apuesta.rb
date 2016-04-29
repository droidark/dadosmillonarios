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
  def validarPartida numerodd, numeroapuesta
       numerodd = numerodd.to_i
       numeroapuesta = numeroapuesta.to_i

    if numerodd == numeroapuesta
      'ganaste'
    elsif numerodd == 7
        'perdiste'
    elsif numerodd == 12
        'ganaste'
    else
      'sigue participando'
    end
  end
end
