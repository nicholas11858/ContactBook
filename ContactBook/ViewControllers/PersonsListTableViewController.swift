//
//  PersonsListTableViewController.swift
//  ContactBook
//
//  Created by NIKOLAY OSIPOV on 08.06.2021.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    // MARK: Public Properties
    
    let person = Person.getPerson()
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutPersonVC = segue.destination as? AboutPersonViewController,
              let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let contact = person[indexPath.row]
        
        aboutPersonVC.person = contact
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return person.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
//        var content = cell.defaultContentConfiguration()
        let user = person[indexPath.row]
        
        cell.textLabel?.text = user.fullName
//
//        cell.contentConfiguration = content
        return cell
    }
}
