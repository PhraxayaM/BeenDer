//
//  MainViewController.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/12/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MainMenuViewController: UIViewController {
    var menuView: MainView!
    let resultViewModel = ResultsViewModel()
    var getBook = BookNetworkManager()
    
    
    var books: [Book] = [] {
        didSet {
            for i in 0...books.count - 1 {
                print("book-\(i): \(books[i])")
            }
        }
    }
    
    var elementName: String = String()
    var bookTitle = String()
    var bookAuthor = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
        setupNav()
        addButtonTarget()
    }
    
    func setupNav() {
        navigationItem.title = "Bender"
        
        let logo = UIImage(named: "googleImage")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: logoBtn)
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "AlternateGrey")
    }
    
    
    
    
    func setupView() {
        let mainView = MainView(frame: self.view.frame)
        self.menuView = mainView
        self.view.addSubview(menuView)
    }
    
    func addButtonTarget() {
        menuView.ResultsButton.addTarget(self, action: #selector(resultsTapped), for: .touchUpInside)

    }
    
    @objc func resultsTapped() {
        guard let input = menuView.searchTextfield.text else { return print("input not working")
        }
        getBook.getBook(title: input) { data in
            self.resultViewModel.decodeXML(data)
            DispatchQueue.main.async {
                let resultVC = ResultsViewController()
                resultVC.viewModel = self.resultViewModel
                self.navigationController?.pushViewController(resultVC, animated: true)
            }
        }
    }
    
}
