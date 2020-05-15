//
//  BookNetworkManager.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/12/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

class BookNetworkManager: NMProtocol {
    
    func getBook(title: String, completion: @escaping (Data) -> ()) {
        //        uisearchbar.text pass in for title
        
        let API_URL =        "https://www.goodreads.com/search.xml?key=\(NetworkProperties.API_KEY)&q=\(title)"
        var urlString = API_URL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        guard let url = URL(string: urlString!) else {
            fatalError()
        }
        let urlRequest = URLRequest(url: url)
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else { return }
            
            completion(data)
        }.resume()
    }
    
}

