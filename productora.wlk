object productora{
    const asistentes = #{}
    var porcentajeImpuesto = 0

    
    method impuesto() = porcentajeImpuesto
    method gananciaTotal()=asistentes.map({unAsistente => unAsistente.totalGastado() }).sum()
    method entradasTotal()=asistentes.map({unAsistente => unAsistente.entadasCompradas()}).sum()
    method bandaMasPopular()=asistentes.map({unAsistente=> unAsistente.filter().recorrerHistorialPorBanda().size()})
}

