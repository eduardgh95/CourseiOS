import UIKit

enum Velocidades:Int{
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    
    
    var velocidad : Velocidades
    init() {
       velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena:String){
        switch self.velocidad {
            case Velocidades.Apagado:
                self.velocidad = Velocidades.VelocidadBaja
                return (Velocidades.Apagado.rawValue,"Apagado")
            
            case Velocidades.VelocidadBaja:
                self.velocidad = Velocidades.VelocidadMedia
                return (Velocidades.VelocidadBaja.rawValue,"Velocidad baja")
            
            case Velocidades.VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                return (Velocidades.VelocidadMedia.rawValue,"Velocidad Media")
            
            
            case Velocidades.VelocidadAlta:
                self.velocidad = Velocidades.VelocidadMedia
                return (Velocidades.VelocidadAlta.rawValue,"Velocidad Alta")
        }
    }
}

var mAuto = Auto()
for index in 0...20{
        print(mAuto.cambioDeVelocidad())
}
