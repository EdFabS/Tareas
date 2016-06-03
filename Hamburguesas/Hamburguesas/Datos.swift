//
//  Datos.swift
//  Hamburguesas
//
//  Created by Fabian Suchett on 03/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    
    var paises = ["México","Panama","Cuba","Costa Rica", "Honduras",
                  "Paraguay","Venezuela","Puerto Rico","Guatemala","Bélice",
                  "Argentina", "Brasil", "Perú", "EUA", "Canadá",
                  "Uruguay", "Colombia", "Jamaica", "Chile", "Bahamas"]
    
    func regresaPaises() -> String{
        let posicion = Int (arc4random()) % paises.count
        //print(Int(arc4random())/paises.count,"  ",posicion," frases ",paises.count)
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas {
    var hamburguesas = ["HMéxico","HPanama","HCuba","HCosta Rica", "HHonduras",
                        "HParaguay","HVenezuela","HPuerto Rico","HGuatemala","HBélice",
                        "HArgentina", "HBrasil", "HPerú", "HEUA", "HCanadá",
                        "HUruguay", "HColombia", "HJamaica", "HChile", "HBahamas"]
    
    func regresaHamburguesas() -> String{
        let posicion = Int (arc4random()) % hamburguesas.count
        //print(Int(arc4random())/hamburguesas.count,"  ",posicion," frases ",hamburguesas.count)
        return hamburguesas[posicion]
    }
}

class ColeccionColores{
    let colores = [ UIColor(red: 210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red: 40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red: 3/255.0, green: 100/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red: 210/255.0, green: 100/255.0, blue: 5/255.0, alpha: 1),
                    UIColor(red: 120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    UIColor(red: 130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red: 130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    UIColor(red: 5/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio()->UIColor{
        let posicion = Int (arc4random()) % colores.count
        //print(Int(arc4random())/colores.count,"  ",posicion," colores ",colores.count)
        return colores[posicion]
    }
}