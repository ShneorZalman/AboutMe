//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 14/05/2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    private let info = Person.getInfo()

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var fanfactLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "my name \(String(info[0].name))"
        ageLabel.text = "my age \(String(info[0].age))"
        descriptionLabel.text = "i'm \(String(info[0].description))"
        fanfactLabel.text = "my name \(String(info[0].fanFact))"
    }
}
