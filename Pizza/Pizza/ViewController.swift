//
//  ViewController.swift
//  Pizza
//
//  Created by Fabian Suchett on 26/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    
    //var datosPizza = seleccionadosPizza(tamano:"", masa:"", queso:"", ingredientes: [])
    @IBOutlet weak var tamano: UITextField!
    
    var arregloTamano = ["Chica", "Mediana", "Grande"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pickerView = UIPickerView()
        pickerView.delegate = self
        tamano.inputView = pickerView
        
    }
    
    /*@IBAction func btnAptTam(sender: AnyObject) {
        datosPizza.tamano=tamano.text
        print(datosPizza.tamano!)
        
    }*/
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arregloTamano.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arregloTamano[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamano.text = arregloTamano[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! seleMasa
        sigVista.tamano = tamano.text!
    }


}

