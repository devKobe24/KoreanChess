//
//  UnitConfigurable.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

import Foundation

protocol UnitConfigurable {
    func configureUnit(
        unitPosition: CGPoint,
        unitName: String,
        tag: Int,
        unitImageName: String,
        completion: @escaping (GameUnit) -> Void
    )
}
