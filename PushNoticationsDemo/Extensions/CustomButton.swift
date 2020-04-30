//
//  CustomButton.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 03/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {

     @IBInspectable var cornerRadiuss:Double{
           get {
               return Double(self.layer.cornerRadius)
           }
           set{
               self.layer.cornerRadius = CGFloat(newValue)
           }
       }
    @IBInspectable var borderWidth:CGFloat{
        get{
            return self.layer.borderWidth
        }
        set{
            self.layer.borderWidth = newValue
        }
    }
    @IBInspectable var borderColor:UIColor{
        get{
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set{
            self.layer.borderColor = newValue.cgColor
        }
    }
    @IBInspectable
    var shadowColor:UIColor{
        get{
            return UIColor(cgColor:self.layer.shadowColor!)
        }
        set{
            self.layer.shadowColor = newValue.cgColor
        }
    }
    @IBInspectable
    var shadowRadius:CGFloat{
        get{
            return self.layer.shadowRadius
        }
        set{
            self.layer.shadowRadius = newValue
            self.layer.shadowOffset = CGSize(width: 0, height: 2)
            self.layer.shadowOpacity = 0.5
        }
    }
    
}
