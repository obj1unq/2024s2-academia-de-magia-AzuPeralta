import cosa.*
import mueble.*

/** Reemplazar por la solución del enunciado */
class Academia {
  const property muebles = #{}

  //haya al menos un mueble donde se pueda guardar
  method puedeGuardar(cosa) {
	return (not self.estaGuardada(cosa)) and self.hayAlgunMuebleParaGuardar(cosa)
	
  }

method hayAlgunMuebleParaGuardar(cosa) {
  return muebles.any({mueble => mueble.puedeGuardar(cosa)})
}
method dondeEsta(cosa) {
  return muebles.find({mueble => mueble.validarSiEstaGuardada(cosa)})
}

 method estaGuardada(cosa) {
   return muebles.any({mueble => mueble.validarSiEstaGuardada(cosa)})
 }

 method mueblesDisponibles(cosa) {
   return muebles.filter({mueble => mueble.puedeGuardar(cosa)})
 }
}


//ACADEMIA TAMBIEN PUEDE SER UN OBJETO TAMBIEN YA QUE EN ESTE CASO PARTICULAR NO ES RE