//
//  Main View Routes.swift
//  MVVM-i
//
//  Created by love on 10/05/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import Foundation
import UIKit

enum MainViewRoutes {
    
    static let storyBoard = UIStoryboard.init(name: kMain, bundle: nil)
    
    case homeViewController
    case emptyViewController
    
    var name: String{
        switch self {
        case .homeViewController:
            return kHomeViewController
        case .emptyViewController:
            return kEmptyViewController
        }
    }
    
    func controller() -> UIViewController{
        switch self {
        case .homeViewController:
            return MainViewRoutes.storyBoard.instantiateViewController(withIdentifier: self.name) as! HomeViewController
        case .emptyViewController:
            return MainViewRoutes.storyBoard.instantiateViewController(withIdentifier: self.name) as! EmptyViewController
        }
    }
}
