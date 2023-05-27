//
//  CGFloat-Ext.swift
//  Bulba
//
//  Created by MacBookMBA4 on 26/05/23.
//

import Foundation
import CoreGraphics


public let π = CGFloat.pi
extension CGFloat{
    func radiansToDegrees() -> CGFloat{
        return self * 180.0 / π
    }
    func degreesToRadians() -> CGFloat{
        return self * π / 180.0
    }
    
}
