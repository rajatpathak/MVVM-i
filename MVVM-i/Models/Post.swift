//
//  Post.swift
//  MVVM-i
//
//  Created by Ayush Pathak on 22/01/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
