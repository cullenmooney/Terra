//
//  LoginController.swift
//  Terra
//
//  Created by Cullen Mooney on 2/15/18.
//  Copyright © 2018 Cullen Mooney. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func seeMap(_ sender: Any) {
        performSegue(withIdentifier: "goToMap", sender: self)
    }

}

