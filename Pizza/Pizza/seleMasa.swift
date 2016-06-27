//
//  seleMasa.swift
//  Pizza
//
//  Created by Fabian Suchett on 26/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import UIKit

class seleMasa: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate{

    
    var tamano:String=""
    @IBOutlet weak var tamanoLabel: UILabel!
    @IBOutlet weak var masaTF: UITextField!
    var arregloMasa = ["Delgada", "Crujiente", "Gruesa"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pickerView = UIPickerView()
        pickerView.delegate = self
        masaTF.inputView = pickerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*@IBAction func btnMasa(sender: AnyObject) {
        datosPizza.masa=masaTF.text
        print(datosPizza.masa!)
        print(datosPizza.tamano!)
    }*/
    
    override func viewWillAppear(animated: Bool) {
        tamanoLabel.text = tamano
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arregloMasa.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arregloMasa[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        masaTF.text = arregloMasa[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! seleQueso
        sigVista.tamano = tamanoLabel.text!
        sigVista.masa = masaTF.text!
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
