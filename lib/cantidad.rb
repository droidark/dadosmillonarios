class Cantidad
  def validaCantidad cantidad
    if cantidad.to_i > 4 and cantidad.to_i < 10001
      cantidad
    else
      "Cantidad no valida"
    end
  end
end
