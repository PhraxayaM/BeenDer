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
        addSubview(resultsButton)
        addSubview(previousSessionButton)
        addSubview(searchTextfield)
        addSubview(logoImage)
    }
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text =  "What would you read, Matthew?"
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    let resultsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0, green: 0.3276904225, blue: 0.5544323921, alpha: 1)
//        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "See results", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "Color")!]))
//        button.setAttributedTitle(buttonText, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Search", for: .normal)
        return button
    }()
    
    let previousSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Previous Sessions", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")!]))
        button.setAttributedTitle(buttonText, for: .normal)
        return button
    }()
    
    let searchTextfield: TextField = {
        let textField = TextField()
        textField.backgroundColor = #colorLiteral(red: 0.8055436015, green: 0.8288783431, blue: 0.8136507273, alpha: 1)
        textField.placeholder = "Search"
        textField.textAlignment = .center
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 2
        textField.layer.masksToBounds = true
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        textField.layer.shadowRadius = 2.0
        textField.layer.shadowOpacity = 0.5
        textField.layer.masksToBounds = false
        textField.layer.shadowPath = UIBezierPath(roundedRect: textField.bounds, cornerRadius: 15).cgPath
        return textField
    }()
    
    let logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Bender")
        return image
    }()
}


class TextField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}





