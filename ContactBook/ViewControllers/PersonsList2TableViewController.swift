//
//  PersonList2TableViewController.swift
//  ContactBook
//
//  Created by NIKOLAY OSIPOV on 08.06.2021.
//

import UIKit

class PersonsList2TableViewController: UITableViewController {
    // MARK: - Public Propersties
    
    let person = Person.getPerson()
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let user = person[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = user.phone
            cell.imageView?.image = UIImage(systemName: "phone")
        case 1:
            cell.textLabel?.text = user.email
            cell.imageView?.image = UIImage(systemName: "tray")
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let user = person[section]
        return user.fullName
    }
}
