//
//  LoginView.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/13/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupSubViews()
        setViewConstraints()
    }
    func setupSubViews() {
        addSubview(descriptionLabel)
        addSubview(logoImageView)
        addSubview(beginLabel)
        addSubview(usernameField)
        addSubview(passwordField)
        addSubview(usernameFieldLabel)
        addSubview(passwordFieldLabel)
        addSubview(loginButton)
    }
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "book")
        
        return imageView
    }()
    
    let beginLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.text = "Begin your journey"
        label.font = UIFont.boldSystemFont(ofSize: 30.0)
        label.numberOfLines = 2
        
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.text = "Enjoy the best books in the world. Start by logging in or signing up for an account with us"
        label.numberOfLines  = 4
        label.font = UIFont.italicSystemFont(ofSize: 15)
        
        return label
    }()
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "book")
        
        
        return imageView
    }()
    
    let usernameField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.backgroundColor = .white

        textField.layer.cornerRadius = 5
        textField.textColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    let usernameFieldLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.text = "Username"
        
        return label
    }()
    
    let passwordFieldLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.text = "Password"
        
        return label
    }()
    
    let passwordField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.backgroundColor = .white

        textField.layer.cornerRadius = 5
        textField.textColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.systemBlue]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
    }()

}
import UIKit

extension LoginView {
    
    func setViewConstraints() {
        
        // Logo Image View Constraints
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.7).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35).isActive = true
        
        // Base Image View Constraints
        
        beginLabel.translatesAutoresizingMaskIntoConstraints = false
        beginLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: -100).isActive = true
//        beginLabel.centerYAnchor.constraint(equalTo: logoImageView.centerYAnchor, constant: -20).isActive = true
        beginLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 40).isActive = true
        beginLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.8).isActive = true
        beginLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        
         descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
                descriptionLabel.topAnchor.constraint(equalTo: beginLabel.topAnchor, constant: 90).isActive = true
        //        beginLabel.centerYAnchor.constraint(equalTo: logoImageView.centerYAnchor, constant: -20).isActive = true
                descriptionLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 20).isActive = true
        descriptionLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.7).isActive = true
                descriptionLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        
        // Username Field Constraints
        
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 215).isActive = true
        usernameField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        usernameField.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        usernameField.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.04).isActive = true
        
        
        // Username Label Constraints
        
        usernameFieldLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameFieldLabel.bottomAnchor.constraint(equalTo: usernameField.topAnchor, constant: -5).isActive = true
        usernameFieldLabel.leftAnchor.constraint(equalTo: usernameField.leftAnchor).isActive = true
        usernameFieldLabel.widthAnchor.constraint(equalTo: usernameField.widthAnchor).isActive = true
        usernameFieldLabel.heightAnchor.constraint(equalTo: usernameField.heightAnchor).isActive = true
        
        
        
        // Password Field Constraints
        
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.topAnchor.constraint(equalTo: passwordFieldLabel.bottomAnchor, constant: 5).isActive = true
        passwordField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        passwordField.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        passwordField.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.04).isActive = true
        
        // Password Label Constraints
        
        passwordFieldLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordFieldLabel.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 10).isActive = true
        passwordFieldLabel.leftAnchor.constraint(equalTo: passwordField.leftAnchor).isActive = true
        passwordFieldLabel.widthAnchor.constraint(equalTo: passwordField.widthAnchor).isActive = true
        passwordFieldLabel.heightAnchor.constraint(equalTo: passwordField.heightAnchor).isActive = true
        
        // Login Button Constraints
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 25).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: passwordField.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: passwordField.widthAnchor, multiplier: 0.5).isActive = true
        loginButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.05).isActive = true
    }
    
    
}

