//
//  confirmRes.swift
//  Pizza
//
//  Created by Fabian Suchett on 26/06/16.
//  Copyright © 2016 sucweb. All rights reserved.
//

import UIKit

class confirmRes: UIViewController {
    
    @IBOutlet weak var LabTamConf: UILabel!
    var tamanoConfirm:String=""
    
    override func viewWillAppear(animated: Bool) {
        LabTamConf.text = String(tamanoConfirm)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
