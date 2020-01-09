//
//  UIKit + Extension.swift
//  Unsplash for RedMadRobot
//
//  Created by Андрей К on 08.01.2020.
//  Copyright © 2020 Андрей Кальдяев. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont, textColor: UIColor) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.textColor = textColor
    }
    
    convenience init(text: String, font: UIFont, textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.textAlignment = textAlignment
    }
}

