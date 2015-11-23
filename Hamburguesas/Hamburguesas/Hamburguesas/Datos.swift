//
//  Datos.swift
//  Hamburguesas
//
//  Created by Saraí Aragón Benítez on 22/11/15.
//  Copyright © 2015 Saraí Aragón Benítez. All rights reserved.
//

import Foundation
import UIKit

struct Colores {
    let colores = [
        UIColor(red: 210/255.0, green: 90/255.0,  blue: 45/255.0,  alpha: 1),
        UIColor(red: 40/255.0,  green: 170/255.0, blue: 45/255.0,  alpha: 1),
        UIColor(red: 3/255.0,   green: 180/255.0, blue: 90/255.0,  alpha: 1),
        UIColor(red: 210/255.0, green: 190/255.0, blue: 5/255.0,   alpha: 1),
        UIColor(red: 120/255.0, green: 120/255.0, blue: 50/255.0,  alpha: 1),
        UIColor(red: 130/255.0, green: 80/255.0,  blue: 90/255.0,  alpha: 1),
        UIColor(red: 130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
        UIColor(red: 3/255.0,   green: 50/255.0,  blue: 90/255.0,  alpha: 1)]
    
    func regresaColorAleatorio () -> UIColor {
        let posicion = Int (arc4random()) % colores.count
        return colores[posicion]
    }
}

class ColeccionDePaises {
    let paises = ["México", "Chile", "Paraguay", "Uruguay", "Holanda", "Alemania", "Italia", "Bélgica", "Estados Unidos", "Brasil", "Japón", "Suiza", "Finlandia", "Polonia", "Irlanda", "Egipto", "Israel", "España", "Francia", "China"]
    
    func obtenPais( )->String {
        return paises[Int(arc4random()) % paises.count];
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas = ["Hamburguesa Mexicana", "Hamburguesa Chilena", "Hamburguesa Star Wars", "Hamburguesa Uruguaya", "Hamburguesa Feliz", "Hamburguesa Alemana", "Hamburguesa Irlandesa", "Hamburguesa China", "Hamburguesa Francesa", "Hamburguesa de Pollo", "Hamburguesa Napolitana", "Hamburguesa Chedar", "Hamburguesa Chuck Norris", "Hamburguesa Tennesse", "Hamburguesa Suiza", "Hamburguesa Japonesa", "Hamburguesa Española", "Hamburguesa Mediterranea", "Hamburguesa Americana", "Hamburguesa Griega"]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count];
    }
}