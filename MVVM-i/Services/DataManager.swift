//
//  DataManager.swift
//  MVVM-i
//
//  Created by Ayush Pathak on 22/01/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

struct DataManager {
    
    // MARK:- variables
    let networkManager: NetworkManager
        
    // MARK:- initializers
    init(networkManager: NetworkManager = NetworkManager()) {
        self.networkManager = networkManager
    }
    
    // MARK:- functions
    func getPosts(offset: Int, limit: Int, onCompletion: @escaping([Post]?, Error?) -> ()) {
        let queries: [String : Any] = ["offset": offset, "limit": limit]
        
        self.networkManager.getPosts(queries: queries) { (res, error) in
            if (error == nil) {
                onCompletion(res, nil)
            }
        }
    }
}
