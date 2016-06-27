//
//  seleQueso.swift
//  Pizza
//
//  Created by Fabian Suchett on 26/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import UIKit

class seleQueso: UIViewController ,UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate{
    
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var tamanoLabel: UILabel!
    var tamano:String=""
    var masa:String=""
    var arregloTipoQueso = ["Mozarela", "Cheddar", "Parmesano", "Sinqueso"]

    @IBOutlet weak var tipoQuesoTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pickerView = UIPickerView()
        pickerView.delegate = self
        tipoQuesoTF.inputView = pickerView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tamanoLabel.text = tamano
        masaLabel.text = masa
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arregloTipoQueso.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arregloTipoQueso[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoQuesoTF.text = arregloTipoQueso[row]
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
