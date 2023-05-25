//
//  CGFloat.swift
//  Bulba
//
//  Created by MacBookMBA4 on 24/05/23.
//

import Foundation
import CoreGraphics

extension CGFloat {
    
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(0xFFFFFFFF)) //return 0, 1
    }
    
    static func random(min: CGFloat, max: CGFloat) -> CGFloat {
        assert(min < max)
        return CGFloat.random() * (max - min) + min //return min or max
    }
}
