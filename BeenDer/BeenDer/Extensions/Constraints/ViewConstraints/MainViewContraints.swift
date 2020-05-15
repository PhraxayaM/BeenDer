//
//  MainViewContraints.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/15/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
extension MainView {

func setViewContraints() {
    
    logoImage.translatesAutoresizingMaskIntoConstraints =  false
    logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
    logoImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    logoImage.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.7).isActive = true
    logoImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
    
    welcomeLabel.translatesAutoresizingMaskIntoConstraints  = false
    welcomeLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 50).isActive = true
    welcomeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    welcomeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
    welcomeLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
    
    resultsButton.translatesAutoresizingMaskIntoConstraints =  false
    resultsButton.topAnchor.constraint(equalTo: searchTextfield.bottomAnchor, constant: 50).isActive = true
    resultsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    resultsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    resultsButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    
    searchTextfield.translatesAutoresizingMaskIntoConstraints =  false
    searchTextfield.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 50).isActive = true
    searchTextfield.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    searchTextfield.widthAnchor.constraint(equalToConstant: 200).isActive = true
    searchTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    previousSessionButton.translatesAutoresizingMaskIntoConstraints = false
    previousSessionButton.topAnchor.constraint(equalTo: resultsButton.bottomAnchor, constant: 100).isActive = true
    previousSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    previousSessionButton.leftAnchor.constraint(equalTo: welcomeLabel.leftAnchor).isActive = true
    previousSessionButton.rightAnchor.constraint(equalTo: welcomeLabel.rightAnchor).isActive = true
    previousSessionButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.075).isActive = true
}
}
