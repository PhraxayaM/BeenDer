//
//  MainView.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/12/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    func setupView() {
        backgroundColor = UIColor(named: "BackgroundColor")
        setupSubViews()
        setViewContraints()
    }
    
    func setupSubViews() {
        addSubview(welcomeLabel)
        addSubview(createSessionButton)
        addSubview(previousSessionButton)
    }
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "100ReactLogo")
        
        return imageView
        
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text =  "What would you read, Matthew?"
        label.textAlignment = .center
        label.numberOfLines = 2
        
        
        return label
        
    }()
    
    let createSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Create a new session", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")!]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
    }()
    
    let previousSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Previous Sessions", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")!]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
    }()
    
    
}

extension MainView {
    
    func setViewContraints() {
        
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints  = false
        welcomeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        welcomeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        welcomeLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        createSessionButton.translatesAutoresizingMaskIntoConstraints =  false
        createSessionButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 100).isActive = true
        createSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        createSessionButton.leftAnchor.constraint(equalTo: welcomeLabel.leftAnchor).isActive = true
        createSessionButton.rightAnchor.constraint(equalTo: welcomeLabel.rightAnchor).isActive = true
        createSessionButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.075).isActive = true
        
        previousSessionButton.translatesAutoresizingMaskIntoConstraints = false
        previousSessionButton.topAnchor.constraint(equalTo: createSessionButton.bottomAnchor, constant: 100).isActive = true
        previousSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        previousSessionButton.leftAnchor.constraint(equalTo: welcomeLabel.leftAnchor).isActive = true
        previousSessionButton.rightAnchor.constraint(equalTo: welcomeLabel.rightAnchor).isActive = true
        previousSessionButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.075).isActive = true
    }
    
    
    
    
}

