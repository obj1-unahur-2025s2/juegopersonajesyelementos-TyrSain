object castillo {
  method altura() {
    return 20
  }
  var defensa = 150
  method recibirAtaque(potencia) {
    defensa = 0.max(defensa - potencia)
  }
  method valorOtorgado() {
    return defensa * 0.2
  }
  method recibirTabajo() {
    defensa = (defensa + 20).min(200)
  }
}

object aurora {
  method altura() {
    return 1
  }
  var estaViva = true
  method recibirAtaque(potencia) {
    if(potencia >= 10) {estaViva = false}
  }
  method estaViva() {return estaViva}
  method valorOtorgado() {
    return 15
  }
  method recibirTrabajo() {}
}

object tipa {
  var altura = 8
  method altura() {
    return altura
  }
  method crecer() {
    altura = altura + 1
  }
  method recibirAtaque(potencia) {}
  method valorOtorgado() {
    return altura * 2
  }
  method recibirTrabajo() {
    altura = altura + 1
  }
}

object ningunElemento {
  method altura() {return 0}
  method recibirAtaque(potencia) {}
}