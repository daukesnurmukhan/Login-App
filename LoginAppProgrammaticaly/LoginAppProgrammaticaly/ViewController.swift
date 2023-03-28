//
//  ViewController.swift
//  LoginAppProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 21.02.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let user = "User"
    private let password = "Password"
    
    let userNameTextField: UITextField = {
        let userNameTextField = UITextField()
        userNameTextField.placeholder = "username"
        userNameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        return userNameTextField
    }()
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "password"
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        return passwordTextField
    }()
    
    let logInButton = newButton(title: "Log In")
    let forgotUserButton = newButton(title: "Forgot User Name?")
    let forgotPasswordButton = newButton(title: "Fprgot Password?")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUI()
    }
    
    func setUI() {
        view.addSubview(userNameTextField)
        userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        userNameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        userNameTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(passwordTextField)
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logInButton)
        logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logInButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [forgotUserButton, forgotPasswordButton])
        view.addSubview(stackView)
        //stackView.frame = CGRect(x: 20, y: 0, width: 100, height: 40)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.center = view.center
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 20).isActive = true
        stackView.translatesAutoresizingMaskIntoConstraints = false
        forgotUserButton.addTarget(self, action: #selector(alertUser), for: .touchUpInside)
        forgotPasswordButton.addTarget(self, action: #selector(alertPassword), for: .touchUpInside)
        
    }
    
    @objc func alertUser() {
        let alertUser = UIAlertController(title: "Oops!", message: "your user - '\(user)' 😉", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertUser.addAction(action)
        present(alertUser, animated: true)
    }
    
    @objc func alertPassword() {
        let alertPassword = UIAlertController(title: "Oops!", message: "your password - '\(password)' 😉", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertPassword.addAction(action)
        present(alertPassword, animated: true)
    }
    
    @objc func nextVC() {
        //let tableVC = WelcomeViewController()
        //1 var
        //tableVC.modalPresentationStyle = .fullScreen
        
        //2 var
        //if let sheet = tableVC.sheetPresentationController {
        //    sheet.detents = [.medium(), .large()]
        //}
        
        //present(tableVC, animated: true)
        
        if userNameTextField.text == user && passwordTextField.text == password {
            let tableVC = WelcomeViewController()
            tableVC.modalPresentationStyle = .fullScreen
            present(tableVC, animated: true)
        } else {
            alertAction()
        }
        
        
    }
    
    func alertAction() {
        let alertAction = UIAlertController(title: "Oops!", message: "you have the wrong username or password😕", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alertAction.addAction(action)
        present(alertAction, animated: true)
    }

}


func newButton(title: String) -> UIButton {
    let button = UIButton()
    button.setTitle(title, for: .normal)
    button.setTitleColor(UIColor(ciColor: .blue), for: .normal)
    return button
}
