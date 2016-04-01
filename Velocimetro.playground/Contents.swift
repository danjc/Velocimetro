//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let result = (self.velocidad.rawValue, "\(self.velocidad)")
        
        switch self.velocidad {
        case Velocidades.Apagado:
            self.velocidad = .VelocidadBaja
        case Velocidades.VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case Velocidades.VelocidadMedia:
            self.velocidad = .VelocidadAlta
        default:
            self.velocidad = .VelocidadMedia
        }
        
        return result
    }
}

var auto = Auto()

for i in 0 ..< 20 {
    print(auto.cambioDeVelocidad())
}