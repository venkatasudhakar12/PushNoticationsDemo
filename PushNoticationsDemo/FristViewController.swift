//
//  FristViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 03/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = ["banana":20,"apple":10]
        let amounts = items.filter { $1>10 }
        print(amounts)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func actionForSecondVC(_ sender: UIButton) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: SecondViewController.name) as SecondViewController
        vc.callBack = { (name:String) in
            print(name)
        }
        present(vc, animated: true, completion: nil)
    }
    
}
extension UIViewController{
    class var name:String{
        return String(describing: self)
    }
}
