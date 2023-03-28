//
//  WelcomeViewController.swift
//  LoginAppProgrammaticaly
//
//  Created by Нұрмұхан Дәукес on 21.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userName: String!
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.lineBreakMode = .byWordWrapping
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.adjustsFontSizeToFitWidth = true
        label.sizeToFit()
        label.textColor = .blue
        label.shadowColor = UIColor.gray
        label.shadowOffset = CGSize(width: 2, height: 2)
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(UIColor(ciColor: .gray), for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let primaryColor = UIColor(red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
    private let secondaryColor = UIColor(red: 107/255, green: 148/255, blue: 230/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        view.addSubview(label)
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    
    @objc func goBack() {
        //modalPresentationStyle = .pageSheet
    }
    
}

extension WelcomeViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
