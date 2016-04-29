class Apuesta
  def validaNumero numero
    numero
  end
  def tirarDados bandera
    if bandera==true
      dado1=ran(1-6)
      dado2=ran(1-6)
      resultado=dado1+dado2
    else
      resultado=2
    end
  end

  def validarPartida numero
    if numero == 7
        'perdiste'
    elsif numero == 12
        'ganaste'
    else
      'sigue participando'
    end
  end
end
