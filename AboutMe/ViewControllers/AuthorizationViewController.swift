//
//  ViewController.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 12/05/2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    
    let user = "1"
    let password = "2"

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else { return }
        helloVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    @IBAction func loginButtonTapped() {
        guard passwordTF.text == password, loginTF.text == user else {
            showAlert(
                title: "Неверный логин или пароль",
                messege: "Ошибка",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openHelloVC", sender: nil)
    }
    
    
    @IBAction func remindInfo(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "oi", messege: "you login \(user)")
        : showAlert(title: "oi", messege: "you password \(password)")
    }
    
    @IBAction func unwindSeque(seque: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    func showAlert(title: String, messege: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)


        
    }
}

