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

    

    method bonificar(){
        tipoAbono.aplicarBonificacion()
    }
    
    method restarMonto(entrada){
        dinero -= tipoAbono.descuento () * entrada.valorReal()
    }
    method totalGastado ()=self.recorrerHistorial().sum()

    method recorrerHistorial() = historial.map({ entrada => entrada.banda() })
    
    method bandasAsistidas ()= self.recorrerHistorial().asSet()

    method entradasCompradas()= self.recorrerHistorial().size()

    method entradasAnioPasado()= historial.filter({entrada => entrada.fecha() >= new Date ().minusYears(1) })
}