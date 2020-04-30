//
//  DefendenceViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 08/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import UIKit

class DefendenceViewController: UIViewController,ResponseHandle {
    func response(message: String) {
        print(message)
    }
    
    @IBAction func actionForButton(_ sender: UIButton) {
        let data = dataManager
        data.requestForData()
    }
    
    lazy var dataManager: DataManager = {
         let manager = DataManager(delegate: self)
         return manager
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
struct Welcome{
    var name:String
    var age:Int = 0
    func sum()->Int{
        let c:Int = 10+30
        return c
    }
    func namePrint()->String{
        "welcome"
    }
}
