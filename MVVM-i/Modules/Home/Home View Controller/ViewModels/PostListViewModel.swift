//
//  PostListViewModel.swift
//  MVVM-i
//
//  Created by Ayush Pathak on 22/01/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

struct PostListViewModel {
    
    // MARK:- variables
    let dataManager: DataManager
    
    var posts: Box<[Post]?> = Box(nil)
    
    var offset: Box<Int> = Box(0)
    var limit: Box<Int> = Box(30)
    
    // MARK:- initializer
    init(dataManager: DataManager = DataManager()) {
        self.dataManager = dataManager
        
        self.getPosts()
    }
    
    // MARK:- functions
    func getPosts() {
        self.dataManager.getPosts(offset: offset.value, limit: limit.value) { (posts, error) in
            guard let posts = posts else { return }
            self.posts.value = posts
            self.offset.value = posts.count
        }
    }
}
