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
    /// 가로
    static let row = 9
    /// 세로
    static let column = 10
    /// 장기알 간격
    static func spacing() -> Int? {
        guard let view = self.scene.view else { return nil }
        let viewWidth = view.frame.width
        let spacing = Int(viewWidth) / column
        
        return spacing
    }
    /// 장기판 x 시작점
    static let startX = spacing()
    /// 장기판 y 시작점
    static func setupStartYposition() -> Int? {
        guard let view = self.scene.view else { return nil }
        let viewHeight = view.frame.height
        guard let spacing = spacing() else { return nil }
        let negativeHalfViewHeight = -(viewHeight / 2)
        let startYposition = Int(negativeHalfViewHeight) + (spacing * column / 2)
        
        return startYposition
    }
}


