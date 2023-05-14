//
//  HelloViewController.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 12/05/2023.
//

import UIKit

class HelloViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "hello \(user!)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
