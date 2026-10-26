class Asistente {
    const historial = []
    var dinero
    var tipoAbono

    method puedeComprar(entrada)= dinero > 0
//aca va la excepcion
    method comprarEntrada(entrada){
        if (self.puedeComprar(entrada)){
            self.restarMonto(entrada)
            historial.add(entrada)
        }
        
    }

    method totalGastado ()= historial.map({entrada=>entrada.valorReal()}).sum()

    method bonificar(){
        tipoAbono.aplicarBonificacion()
    }
    
    method restarMonto(entrada){
        dinero -= tipoAbono.descuento () * entrada.valorReal()
    }

    method recorrerHistorial() = historial.map({ entrada => entrada.banda() })
    
    method bandasAsistidas ()= self.recorrerHistorial().asSet()

    method entradasAnioPasado()= historial.filter({entrada => entrada.fecha() >= new Date ().minusYears(1) })
}