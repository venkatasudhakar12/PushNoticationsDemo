//
//  TableViewVM.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 10/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import Foundation
import UIKit

class TableViewVM:NSObject {
    private var mobiles = [Mobile(name: "iPhone", cost: 1200.00),Mobile(name: "Samsung", cost: 900.00),
                           Mobile(name: "OnePlus", cost: 1000.00),Mobile(name: "Redmi", cost: 700.00),
                           Mobile(name: "Vivo", cost: 600.00),Mobile(name: "Oppo", cost: 800.00)]
    
}
extension TableViewVM:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mobiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let mobile = mobiles[indexPath.row]
        cell.textLabel?.text = mobile.name
        cell.detailTextLabel?.text = "$ \(mobile.cost)"
        return cell
    }
    
    
}
struct Mobile {
    var name:String
    var cost:Float
}
