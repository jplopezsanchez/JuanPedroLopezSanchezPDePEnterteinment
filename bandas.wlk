class Banda {
    const nombre
    var canon = 1000000
    
    method gastoExtra()
    method precioReal()= self.canon() + self.gastoExtra()
    method canon ()= canon
    method popularidad

}

class BandaRock inherits Banda{
    var solosGuitarra
    override method gastoExtra()= 10000
    override method popularidad()=100*solosGuitarra
}

class BandaTrap inherits Banda{
    var tienenHielo

    override method gastoExtra()= 0
    override method popularidad (){
        if(tienenHielo){
            return 1000
        }
        else return 0
    } 

    override method canon ()= canon*self.popularidad()
}
class BandaIndie inherits Banda{
    var cantInstrumentos

    override method gastoExtra()= 500*cantInstrumentos

    override method popularidad ()= nombre.size()*3.14
    
}