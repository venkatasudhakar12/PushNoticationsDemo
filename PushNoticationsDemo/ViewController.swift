//
//  ViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 20/12/19.
//  Copyright © 2019 Bayer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func actionForLogin(_ sender: UIButton) {
        if !userNameTF.text!.isEmpty && !passwordTF.text!.isEmpty{
             loginAuth()
        }
    }
    func loginAuth(){
        loader.startAnimating()
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now()+2) {
            DispatchQueue.main.async {
                
                self.loader.stopAnimating()
                if self.userNameTF.text == self.passwordTF.text {
                     self.loginSuccessAlert(message: "Success")
                }
                else{
                     self.loginSuccessAlert(message: "Error")
                }

            }
        }
    }
    func loginSuccessAlert(message:String){
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
}

