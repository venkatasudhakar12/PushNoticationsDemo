//
//  StarViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 07/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import UIKit

class StarViewController: UIViewController {

    @IBOutlet var startBtns: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionForBtns(_ sender: UIButton) {
        print("you are rated \(sender.tag)  stars")
        
//        for button in startBtns {
//        if button.tag <= sender.tag {
//            button.setImage(UIImage(systemName: "star.fill"), for: .normal)
//        } else {
//            button.setImage(UIImage(systemName: "star"), for: .normal)
//        }
//        }
    }
    
}
