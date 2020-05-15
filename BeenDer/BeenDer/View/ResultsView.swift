//
//  ResultsView.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/13/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit


class ResultsView: UIView {
    var viewModel: ResultsViewModel?
    var rowCount: Int?
    var books: [Book] = []
//    {
//        didSet {
//            tableView.reloadData()
//        }
//    }
    
    override  init(frame: CGRect) {
        super .init(frame: frame)
            setupView()
    }
    
     

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupSubViews()
        setViewConstraints()
        
    }
    
    func setupSubViews() {
        addSubview(tableView)
    }
    

    let tableView: UITableView = {
        let tableview = UITableView()
        tableview.tableFooterView = UIView()
        tableview.register(ResultsTableViewCell.self, forCellReuseIdentifier: ResultsTableViewCell.identifier)
        return tableview
    }()
    
}
