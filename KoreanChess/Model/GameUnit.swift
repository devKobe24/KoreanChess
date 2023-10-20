//
//  GameUnit.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

import Foundation

struct GameUnit: GameUnitMakerable {
    var unitPosition: CGPoint = CGPoint()
    var unitName: String = String()
    var tag: Int = Int()
    var unitImageName: String = String()
}
