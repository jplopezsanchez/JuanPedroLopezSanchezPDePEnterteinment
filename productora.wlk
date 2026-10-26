object productora{
    const asistentes = #{}

    method gananciaTotal()=asistentes.map({unAsistente => unAsistente.totalGastado() }).sum()
    method entradasTotal()=asistentes.map({unAsistente => unAsistente.entadasCompradas()}).sum()
}