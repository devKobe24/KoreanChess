//
//  PalaceMove.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/24/23.
//
import Foundation

enum PalaceMove {
    case tankUnit(x: CGFloat, y: CGFloat)
    
    var direction: TankUnitPlaceMove {
        switch self {
        case .tankUnit(let xPoint, let yPoint):
            return TankUnitPlaceMove.rightUp(xPoint, yPoint)
        }
    }
}

enum TankUnitPlaceMove {
    case rightUp(CGFloat, CGFloat)
    case leftUp(CGFloat, CGFloat)
    case rightDown(CGFloat, CGFloat)
    case leftDown(CGFloat, CGFloat)
    
    var movePoint: CGPoint {
        switch self {
        case .rightUp(let xPoint, let yPoint):
            return CGPoint(x: xPoint, y: yPoint)
        case .leftUp(let xPoint, let yPoint):
            return CGPoint(x: xPoint, y: yPoint)
        case .rightDown(let xPoint, let yPoint):
            return CGPoint(x: xPoint, y: yPoint)
        case .leftDown(let xPoint, let yPoint):
            return CGPoint(x: xPoint, y: yPoint)
        }
    }
}
