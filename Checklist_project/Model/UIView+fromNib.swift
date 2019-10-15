//
//  UIView+fromNib.swift
//  Checklist1
//
//  Created by Zed on 10/14/19.
//  Copyright © 2019 123. All rights reserved.
//

import UIKit

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
