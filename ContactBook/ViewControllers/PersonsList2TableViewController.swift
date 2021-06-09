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
        
        var content = cell.defaultContentConfiguration()
        let user = person[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = user.phone
            content.image = UIImage(systemName: "phone")
        case 1:
            content.text = user.email
            content.image = UIImage(systemName: "tray")
        default:
            break
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let user = person[section]
        return user.fullName
    }
}
