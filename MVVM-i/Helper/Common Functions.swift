//
//  Common Functions.swift
//  MVVM-i
//
//  Created by love on 10/05/21.
//  Copyright © 2021 Appentus Technologies Pvt. Ltd. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    func push(to: UIViewController, with animation: Bool){
        self.navigationController?.pushViewController(to, animated: animation)
    }
}
