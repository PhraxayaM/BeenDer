//
//  ResultsViewController.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/13/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController: UIViewController {
    
    var viewModel: ResultsViewModel!
    var resultView: ResultsView!
    
    let network = BookNetworkManager()
    var books: [Book] = []
        {
        didSet {
            resultView.tableView.reloadData()
//            setupView(books: self.books)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        resultView.tableView.dataSource = self
        resultView.tableView.delegate = self
        self.books = viewModel.books
    }
    
    func setup() {
        setupNav()
        setupView(books: books)
    }
    
    func setupNav() {
        navigationItem.title = "Results"
        
        let logo = UIImage(named: "googleImage")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoBtn)
    }
    
    func setupView(books: [Book]) {
        let resultsView = ResultsView(frame: self.view.frame)
        self.resultView = resultsView
        resultsView.books = books
        self.view.addSubview(resultsView)
    }
    
    
}
