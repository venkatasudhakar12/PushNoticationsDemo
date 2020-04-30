//
//  SecondViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 03/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var callBack:((_ name:String)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func actionForFirstVC(_ sender: UIButton) {
        callBack?("welcome")
        self.dismiss(animated: true, completion: nil)
    }
 
    
}
