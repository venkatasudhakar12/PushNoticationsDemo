//
//  TableTableViewController.swift
//  PushNoticationsDemo
//
//  Created by Sudhakar on 27/12/19.
//  Copyright © 2019 Bayer. All rights reserved.
//

import UIKit

fileprivate typealias PersonDataSource = UITableViewDiffableDataSource<TableTableViewController.Section,Person>
fileprivate typealias PersonSnapshot = NSDiffableDataSourceSnapshot<TableTableViewController.Section,Person>
class TableTableViewController: UITableViewController {
    private var persons = [Person]()
    private var dataSource : PersonDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
    }
    
    private func configureDataSource(){
        dataSource = PersonDataSource(tableView: tableView, cellProvider: { (tableView, indexPath, person) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            if indexPath.row%2 == 0{
                cell.imageView?.image = UIImage(systemName: "person.crop.square")
            }else{
                cell.imageView?.image = UIImage(systemName: "person")
            }
            cell.textLabel?.text = person.name
            return cell
        })
    }
    
    private func showAlert(){
        let alert = UIAlertController(title: "Name", message: "", preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { nameTF in
            nameTF.placeholder = "Enter Your Name"
        }
        let ok = UIAlertAction(title: "Add", style: .default) { ok in
            let name = alert.textFields?[0].text
            if let name = name {
                self.persons.append(Person(name: name))
                self.createSnapshot(from: self.persons)
            }
        }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    private func createSnapshot(from persons:[Person]){
      var snapShot = PersonSnapshot()
        snapShot.appendSections([TableTableViewController.Section.main])
        snapShot.appendItems(persons)
        dataSource.apply(snapShot, animatingDifferences: true, completion: nil)
    }
    
    @IBAction func actionForAddPerson(_ sender: UIBarButtonItem) {
        showAlert()
      
        
    }
    
}

struct Person:Hashable {
    var name:String
}
extension TableTableViewController{
    fileprivate enum Section{
        case main
    }
}
