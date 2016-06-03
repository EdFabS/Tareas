//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Fabian Suchett on 03/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paises: UILabel!
    @IBOutlet weak var hamburguesas: UILabel!
    let paisesArreglo = ColeccionDePaises()
    let hamburguesasArreglo = ColeccionDeHamburguesas()
    let color = ColeccionColores()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambio(sender: AnyObject) {
        paises.text = paisesArreglo.regresaPaises()
        hamburguesas.text = hamburguesasArreglo.regresaHamburguesas()
        let colorAleatorio = color.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
    }

}

