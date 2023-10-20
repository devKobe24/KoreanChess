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
//    /// 가로
//    static let row = 9
//    /// 세로
//    static let column = 10
    /// 장기알 간격
    static let unitSpacing = spacing()
    /// x 시작점
    static let startX = spacing()
    /// y 시작점
    static let startY = setupStartYposition()
    
    static var allUnits: [GameUnit] = []
}

private func setupStartYposition() -> Int? {
    guard let view = Variables.scene.view else { return nil }
    let viewHeight = view.frame.height
    guard let spacing = Variables.unitSpacing else { return nil }
    let negativeHalfViewHeight = -(viewHeight / 2)
    let startYposition = Int(negativeHalfViewHeight) + (spacing * FieldMetrix.column.value / 2)
    
    return startYposition
}

private func spacing() -> Int? {
    guard let view = Variables.scene.view else { return nil }
    let viewWidth = view.frame.width
    let spacing = Int(viewWidth) / FieldMetrix.column.value
    
    return spacing
}
