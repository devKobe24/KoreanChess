//
//  DigonalDirectionCase.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/23/23.
//
import Foundation

enum DigonalDirectionCase {
    case leftDownToRightUp
    case rightDownToLeftUp
    case leftUpToRightDown
    case rightUpToLeftDown
    case center
    
    var position: (greenSide: CGPoint, redSide: CGPoint) {
        switch self {
        case .leftDownToRightUp:
            let greenSideLeftDownCornerPoint = UnitPosition.leftDownCorner(x: 3, y: 9).point
            let redSideLeftDownCornerPoint = UnitPosition.leftDownCorner(x: 3, y: 2).point
            
            return (greenSideLeftDownCornerPoint, redSideLeftDownCornerPoint)
        case .rightDownToLeftUp:
            let greenSideRightDownCornerPoint = UnitPosition.rightDownCorner(x: 5, y: 9).point
            let redSideRightDownCornerPoint = UnitPosition.rightDownCorner(x: 5, y: 2).point
            
            return (greenSideRightDownCornerPoint, redSideRightDownCornerPoint)
        case .leftUpToRightDown:
            let greenSideLeftUpCornerPoint = UnitPosition.leftUpCorner(x: 3, y: 7).point
            let redSideLeftUpCornerPoint = UnitPosition.leftUpCorner(x: 3, y: 0).point
            
            return (greenSideLeftUpCornerPoint, redSideLeftUpCornerPoint)
        case .rightUpToLeftDown:
            let greenSideRightUpCornerPoint = UnitPosition.rightUpCorner(x: 5, y: 7).point
            let redSideRightUpCornerPoint = UnitPosition.rightUpCorner(x: 5, y: 0).point
            
            return (greenSideRightUpCornerPoint, redSideRightUpCornerPoint)
        case .center:
            let greenSideCenterPoint = UnitPosition.down(x: 4, y: 8).point
            let redSideCenterPoint = UnitPosition.up(x: 4, y: 1).point
            
            return (greenSideCenterPoint, redSideCenterPoint)
        }
    }
}
