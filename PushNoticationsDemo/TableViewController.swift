//
//  TableViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 10/01/20.
//  Copyright © 2020 Bayer. All rights reserved.
//

import UIKit
import Foundation
class TableViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    let vm:TableViewVM = TableViewVM()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.table.dataSource = vm 
        // Do any additional setup after loading the view.
    }
  

}
