//: Velocímetro digital

enum Velocidades: Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    var velocidadString : String {
        switch self {
        case .Apagado: return "Apagado";
        case .VelocidadBaja: return "Velocidad Baja";
        case .VelocidadMedia: return "Velocidad Media";
        case .VelocidadAlta: return "Velocidad Alta";
        }
    }
}

class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadesString: String){
        let velActual = self.velocidad
        
        switch(self.velocidad){
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        
        return (velActual.rawValue, velActual.velocidadString)
    }
}

let automovil: Auto = Auto()
automovil.velocidad
for i in 1...20 {
    let result = automovil.cambioDeVelocidad()
    print("Velocidad: \(result.actual)       \(result.velocidadesString)")
}