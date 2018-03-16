//
//  HistoryController.swift
//  Terra
//
//  Created by Cullen Mooney on 3/16/18.
//  Copyright © 2018 Cullen Mooney. All rights reserved.
//

import UIKit

class HistoryController: UIViewController {

    @IBOutlet weak var buildingName: UILabel!
    @IBOutlet weak var buildingDesign: UITextView!
    
    var receivedName = ""
    var receivedDesign = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildingName.text = receivedName
        buildingDesign.text = receivedDesign
    }
    
    @IBAction func returnToMap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
