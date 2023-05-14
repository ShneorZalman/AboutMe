//
//  ViewController.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 12/05/2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    // Я запутался, Должен ли я передавать данные по экранам или на каждом вью делать свою иницилизацию( прошу прощения за ошибки( стыдно сдавать такую работу(
    
    
    private let loginValue = LoginValue.getLoginValue()
    let info = Person.getInfo()

    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var loginTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let helloVC = viewController as? HelloViewController {
                helloVC.user = info[0].name }
//            } else if let aboutMeVC = viewController as? AboutMeViewController {
//
//            } else if let navigationVC = viewController as? UINavigationController {
//                    guard let aboutMeVC = navigationVC.topViewController as? AboutMeViewController else { return }
//
//                }
            }
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    @IBAction func loginButtonTapped() {
        guard passwordTF.text == loginValue.password, loginTF.text == loginValue.user else {
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
        ? showAlert(title: "oi", messege: "you login \(loginValue.user)")
        : showAlert(title: "oi", messege: "you password \(loginValue.password)")
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

