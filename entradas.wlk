import productora.*

class Entrada{
    const banda
    const fecha
    const precioBase = 1000

    method valorReal()= precioBase + productora.impuesto() 
    method fecha() = fecha 
    method banda()=banda
}


