//
//  DigonalDirectionCase.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/23/23.
//
import Foundation

enum DigonalDirectionCase {
    case leftDownToRightUp
    
    var position: (greenSide: CGPoint, redSide: CGPoint) {
        switch self {
        case .leftDownToRightUp:
            let greenSideLeftDownCornerPoint = UnitPosition.leftDownCorner(x: 3, y: 9).point
            let redSideLeftDownCornerPoint = UnitPosition.leftDownCorner(x: 3, y: 2).point
            
            return (greenSideLeftDownCornerPoint, redSideLeftDownCornerPoint)
        }
    }
}
