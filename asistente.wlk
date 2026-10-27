class Asistente {
    const historial = []
    var dinero
    var tipoAbono

    method puedeComprar(entrada)= dinero > 0
//aca va la excepcion
    method comprarEntrada(entrada) {
    if (self.puedeComprar(entrada)) {
        self.restarMonto(entrada)
        historial.add(entrada)
    } else {
        throw new SaldoInsuficienteException()
    }
}

    

    method bonificar(){
        tipoAbono.aplicarBonificacion()
    }
    
    method restarMonto(entrada){
        dinero -= entrada.valorReal() * (1 - tipoAbono.descuento())
    }

    method recorrerHistorialPorBanda() = historial.map({ entrada => entrada.banda() })

    method totalGastado ()= historial.map({entrada=>entrada.valorReal()}).sum()

    method entradasCompradas() = historial.size()

    method bandasAsistidas ()= self.recorrerHistorialPorBanda().asSet()

    method entradasAnioPasado()= historial.filter({entrada => entrada.fecha() >= new Date ().minusYears(1) })
}
class SaldoInsuficienteException inherits Exception {
    override method message() = "No le alcanza el saldo para comprar"
}
