//
//  BookNetworkManager.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/12/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

class BookNetworkManager: NMProtocol {
    var books: [Book] = []
    var elementName: String = String()
    var bookTitle = String()
    var bookAuthor = String()
    func getBook(title: String, completion: @escaping (Data) -> ()) {
        let API_URL =
        "https://www.goodreads.com/search.xml?key=\(NetworkProperties.API_KEY)&q=Ender%27s+Game?"
        
        guard let url = URL(string: API_URL) else {
            fatalError()
        }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else { return }
            //            print("data is: \(data)")
            //            print(response)
            //            print(error)
            
            completion(data)
        }.resume()
    }
    
}

