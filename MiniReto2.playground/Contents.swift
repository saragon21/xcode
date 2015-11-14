enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidadInicial : Velocidades;
    
    init () {
        velocidadInicial = Velocidades(velocidadInicial: .Apagado);
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var mensaje :String = "";
        var velocidadActual : Int = 0;
        
        switch (velocidadInicial) {
            case .Apagado :
                mensaje = "Apagado";
                velocidadActual = velocidadInicial.rawValue;
                velocidadInicial = .VelocidadBaja;
            case .VelocidadBaja :
                mensaje = "Velocidad Baja";
                velocidadActual = velocidadInicial.rawValue;
                velocidadInicial = .VelocidadMedia;
            case .VelocidadMedia :
                mensaje = "Velocidad Media";
                velocidadActual = velocidadInicial.rawValue;
                velocidadInicial = .VelocidadAlta;
            default :
                mensaje = "Velocidad Alta";
                velocidadActual = velocidadInicial.rawValue;
                velocidadInicial = .VelocidadMedia;
        }
        
        return (velocidadActual, mensaje);
    }
}

var auto = Auto();

for (var i = 0; i < 20; i++) {
    print(auto.cambioDeVelocidad())
}