//
//  ResultsViewModel.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/13/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewModel: UIViewController, XMLParserDelegate {
    
    
    
    let network = BookNetworkManager()
    var input: String = ""
    var books: [Book] = []
    
    func resultsArray(completion: @escaping ()->()) {
        network.getBook(title: input) { Data in
            self.decodeXML(Data)
            //            print("get books: \(self.books)")
            //            print("resultsviewmodeL")
        }
        //        network.getBook(title: "Enders") { Data in
        //            for item in Data {
        //                self.books.append(item)
        //            }
        //            completion()
        //        }
        //        network.getPreviousSessions(userID: userID){ response in
        //            for item in response {
        //                self.previousSessions.append(item)
        //            }
//                    completion()
////                }
    }
    
    func rowsPerSection() -> Int {
        return self.books.count
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "work" {
            let book = Book(bookTitle: bookTitle, bookAuthor: bookAuthor)
            books.append(book)
        }
    }
    
    var elementName: String = String()
    var bookTitle = String()
    var bookAuthor = String()
    
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
        print("decodeXML: \(books)")
        
    }
    
}
