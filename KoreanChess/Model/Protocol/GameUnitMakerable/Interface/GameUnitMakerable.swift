//
//  GameUnitMakerable.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

import Foundation

protocol GameUnitMakerable {
    var unitPosition: CGPoint { get set }
    var unitId: String { get set }
    var tag: Int { get set }
    var unitImageName: String { get set }
}
