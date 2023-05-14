//
//  MySonViewController.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 15/05/2023.
//

import UIKit

class MySonViewController: UIViewController {

    let info = Person.getInfo()
    
    @IBOutlet var fanfactLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "my name \(String(info[2].name))"
        ageLabel.text = "my age \(String(info[2].age))"
        descriptionLabel.text = "i'm \(String(info[2].description))"
        fanfactLabel.text = "my name \(String(info[2].fanFact))"
    }
}
