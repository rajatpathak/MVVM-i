//
//  Box.swift
//  MVVM-i
//
//  Created by Ayush Pathak on 22/01/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    
    // MARK:- variables for the binder
    var value: T {
        didSet {
            listener?(value)
        }
    }

    var listener: Listener?
    
    // MARK:- initializers for the binder
    init(_ value: T) {
        self.value = value
    }
    
    // MARK:- functions for the binder
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
