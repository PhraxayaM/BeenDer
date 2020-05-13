//
//  MainViewController.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/12/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MainMenuViewController: UIViewController, XMLParserDelegate {
    var menuView: MainView!
    //    let viewModel = MainMenuViewModel()
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
        getBook.getBook(title: "enders") { data in
            self.decodeXML(data)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
        setupNav()
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
    
    // 1
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "work" {
            bookTitle = String()
            
        }
        
        if elementName == "author" {
            bookAuthor = String()
        }
        
        self.elementName = elementName
    }
    
    // 2
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "work" {
            let book = Book(bookTitle: bookTitle, bookAuthor: bookAuthor)
            books.append(book)
        }
    }
    
    // 3
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let data = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if (!data.isEmpty) {
            if self.elementName == "title" {
                bookTitle += data
            } else if self.elementName == "name" {
                bookAuthor += data
            }
        }
    }
    
    func decodeXML(_ data: Data) {
        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()
        print(books)
        
    }
    
    
    
}
