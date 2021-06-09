//
//  AboutPersonViewController.swift
//  ContactBook
//
//  Created by NIKOLAY OSIPOV on 09.06.2021.
//

import UIKit

class AboutPersonViewController: UIViewController {
    // MARK: - IB Outlets
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emaiLabel: UILabel!
    // MARK: - Public Properties
    
    var person: Person!
    // MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = person.fullName
        phoneLabel.text = person.phone
        emaiLabel.text = person.email
    }
}
