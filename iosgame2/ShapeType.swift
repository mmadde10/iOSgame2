//
//  ShapeTypes.swift
//  iosgame2
//
//  Created by Mark Madden on 3/3/19.
//  Copyright © 2019 Mark Madden. All rights reserved.
//

import Foundation

// 1
enum ShapeType:Int {
    
    case box = 0
    case sphere
    case pyramid
    case torus
    case capsule
    case cylinder
    case cone
    case tube
    
    // 2
    static func random() -> ShapeType {
        let maxValue = tube.rawValue
        let rand = arc4random_uniform(UInt32(maxValue+1))
        return ShapeType(rawValue: Int(rand))!
    }
}
