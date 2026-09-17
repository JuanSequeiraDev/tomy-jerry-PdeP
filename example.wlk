object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

object casa{
  var suciedad = 1000;
  const quilomberos = []
  const cuidador = "tom"

  method muchoQuilombo(){
    if(quilomberos.length() > 3){
      cuidador.despertar()
    }
  }

  //setter
  method sacarUnQuilombero(quilombero) {
    quilomberos.remove(quilombero)
  } 

  //getter
  method quilomberos() = quilomberos

  //getter
  method suciedad() = suciedad

  //setter
  method suciedad(_suciedad){
    suciedad = _suciedad
  }

}

object tom {
  var energia = 100
  var suenio = false
  
  method limpiarCasa(casa, quilombero){
    const suciedadDeCasa = casa.suciedad()
    casa.suciedad(suciedadDeCasa - 100)
    energia = energia - 40

    if(self.puedeAtraparAlQuilombero(quilombero)){
      casa.sacarUnQuilombero(quilombero)
    }
  }

  //setter de suenio
  method disrumpirSuenio(){
    suenio = false
  }

  //getter
  method energia() = energia
  //setter
  method energia(_energia) {
    energia = _energia
  }

  method velocidad() = 5 + energia / 10
  
  method puedeAtraparAlQuilombero(quilombero) = quilombero.velocidad() < self.velocidad()
  
  method dormir(){
    suenio = true
    energia = energia + 50
  }  
  method despertar(){
    suenio = false
    energia = energia - 20
  }
}

object jerry{
  var peso = 5

  method hacerQuilombo(casa){
    const suciedadDeCasa = casa.suciedad()
    casa.suciedad(suciedadDeCasa + 110)
    peso = peso + 1
  }
  
  method velocidad() = 10 - peso
}

object tuffy{
  var energia = 100
  var velocidad = 10

  method hacerQuilombo(cuidador){
    cuidador.despertar()
  }

  //getter de velocidad
  method velocidad() = velocidad
}

object robocat{
  var encendido = false

  method limpiarCasa(casa){
    casa.suciedad(0)
    self.puedeAtraparAlQuilombero()
  }

  method dormir() { encendido = true }
  method despertar() { encendido = false}

  method puedeAtraparAlQuilombero() = true 

}


