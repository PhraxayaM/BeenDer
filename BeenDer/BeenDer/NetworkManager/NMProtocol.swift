//
//  NMProtocol.swift
//  BeenDer
//
//  Created by MattHew Phraxayavong on 5/12/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
protocol NMProtocol {
    
        func getBook(title: String, completion: @escaping (Data) -> ())
}
