//
//  Variables.swift
//  KoreanChess
//
//  Created by Minseong Kang on 2023/10/03.
//

import Foundation
import SpriteKit

struct Variables {
    static var scene = SKScene()
    
    static var allUnits: [GameUnit] = []
    
    static var unitDirections: [Direction] = []
}

extension Variables {
    static func getUnitDirectionTag(unitDirections: [Direction], unitPosition: CGPoint) -> Int {
        var unitDirectionTag: Int = 0

        for unitDirection in unitDirections {
            switch unitDirection.unitPosition {
            case unitPosition:
                unitDirectionTag = unitDirection.tag
                break
            default:
                break
            }
        }
        return unitDirectionTag
    }
}
