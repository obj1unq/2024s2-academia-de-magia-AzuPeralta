class Mueble {
  const property cosas = #{}
  
  method validarSiEstaGuardada(cosa) = cosas.contains(cosa)
  
  method puedeGuardar(cosa)
  
  method guardar(cosa) {
    self.puedeGuardar(cosa)
    self.validarSiEstaGuardada(cosa)
    
    cosas.add(cosa)
  }
}

class Baul inherits Mueble {
  const property volumenMaximo
  
  method totalVolumenCosas() = self.cosas().sum({ obj => obj.volumen() })
  
  method volumenLibre() = volumenMaximo - self.totalVolumenCosas()
  
  override method puedeGuardar(
    cosa
  ) = (self.volumenLibre() - cosa.volumen()) <= volumenMaximo
}

class GabineteMagico inherits Mueble {
  override method puedeGuardar(cosa) = cosa.esMagica()
}

class Armario inherits Mueble {
  var property cantMaxima
  
  override method puedeGuardar(cosa) = cantMaxima  >= self.cosas().size() + 1
}

class BaulMagico inherits Baul{
    
}