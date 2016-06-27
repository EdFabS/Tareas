//
//  resPizza.swift
//  Pizza
//
//  Created by Fabian Suchett on 26/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import UIKit

class seleccionadosPizza {
    var tamano:String?
    var masa:String?
    var queso:String?
    var ingredientes:[String]?
    
    init(tamano: String, masa: String,queso: String,ingredientes:[String]) {
        self.tamano = tamano
        self.masa = masa
        self.queso = queso
        self.ingredientes = ingredientes
    }
}
