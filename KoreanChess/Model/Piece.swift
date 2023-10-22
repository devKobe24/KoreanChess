//
//  Piece.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/22/23.
//

import Foundation

struct Piece {
    var unitPosition: UnitPosition
    var unitId: UnitIdentifier
    var tag: Tag
    var unitImageName: UnitImageAssets
    
    init(unitPosition: UnitPosition,
         unitId: UnitIdentifier,
         tag: Tag,
         unitImageName: UnitImageAssets
    ) {
        self.unitPosition = unitPosition
        self.unitId = unitId
        self.tag = tag
        self.unitImageName = unitImageName
    }
    
    func setup(with completion: @escaping (GameUnit, Direction) -> Void) {
        let unit = self.makeUnit()
        let direction = self.makeDirection()
        
        completion(unit, direction)
    }
}

extension Piece {
    private func makeUnit() -> GameUnit {
        let unit = GameUnit(
            unitPosition: unitPosition.point,
            unitId: unitId.id,
            tag: tag.id,
            unitImageName: unitImageName.imageName
        )
        
        return unit
    }
    
    private func makeDirection() -> Direction {
        let direction = Direction(
            unitPosition: unitPosition.point,
            unitId: unitId.id,
            tag: tag.id
        )
        
        return direction
    }
}
