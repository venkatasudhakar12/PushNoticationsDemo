//
//  DataManager.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 08/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import Foundation

protocol ResponseHandle {
    func response(message:String)
}

@objc public class DataManager:NSObject{
    private var delegate:ResponseHandle
    init(delegate:ResponseHandle) {
        self.delegate = delegate
    }
    func requestForData(){
        delegate.response(message: "Welcome to depedency injection")
    }
}

@objc public class NameManager:NSObject{
    private var name:String
    @objc public init(name:String) {
        self.name = name
    }
    @objc public func requestForName()->String{
        return "Welcome \(name)"
    }
}

