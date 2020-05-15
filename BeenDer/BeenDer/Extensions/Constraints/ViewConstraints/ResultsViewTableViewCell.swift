//
//  ResultsViewTableViewCell.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/13/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
extension ResultsTableViewCell {
    
    func setupViewConstraints() {
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive =  true
        containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
        sessionTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        sessionTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        sessionTitleLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        sessionTitleLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        sessionTitleLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.4).isActive =  true
        
        sessionDateLabel.translatesAutoresizingMaskIntoConstraints = false
        sessionDateLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10).isActive = true
        sessionDateLabel.topAnchor.constraint(equalTo: sessionTitleLabel.bottomAnchor).isActive = true
        sessionDateLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        sessionDateLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.5).isActive = true
        
    }
    
    
}

