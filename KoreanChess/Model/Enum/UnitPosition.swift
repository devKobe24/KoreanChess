//
//  UnitPosition.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/22/23.
//
import Foundation

enum UnitPosition {
    case up(x: Int, y: Int)
    case down(x: Int, y: Int)
    case left(x: Int, y: Int)
    case right(x: Int, y: Int)
    case leftDownCorner(x: Int, y: Int)
    case rightDownCorner(x: Int, y: Int)
    case leftUpCorner(x: Int, y: Int)
    case rightUpCorner(x: Int, y: Int)
    
    var point: CGPoint {
        switch self {
        case .up(x: let x, y: let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .down(x: let x, y: let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .left(let x, let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .right(let x, let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .leftDownCorner(x: let x, y: let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .rightDownCorner(x: let x, y: let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .leftUpCorner(x: let x, y: let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        case .rightUpCorner(x: let x, y: let y):
            return UnitPoint(xAxis: x, yAxis: y).unitPostion
        }
    }
}



