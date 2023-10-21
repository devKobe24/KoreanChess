//
//  TankUnit.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/21/23.
//

import SpriteKit
import OSLog

final class TankUnit {
    var unitDirections: [Direction]
    var unit: GameUnit
    let guideBlock = GuideBlock()
    let logger: Logger = Logger()
    
    init(unit: GameUnit, unitDirections: [Direction]) {
        self.unit = unit
        self.unitDirections = unitDirections
        
        moveTankUnit()
    }
}

extension TankUnit {
    private func moveTankUnit() {
        let currentUnitTag = unit.tag
        let currentUnitId = unit.unitId
        
        let currentUnitXpoint = Int(unit.unitPosition.x)
        let currentUnitYpoint = Int(unit.unitPosition.y)
        
        /// - 유닛의 왼쪽 방향 체크 로직
        let checkLeftDirectionPointRange = (0..<currentUnitXpoint).reversed()
        for checkPoint in checkLeftDirectionPointRange {
            let currentUnitPosition = CGPoint(x: checkPoint, y: currentUnitYpoint)
            
            
            let tankUnitTag = Variables.getUnitTag(
                unitDirections: unitDirections,
                unitPosition: currentUnitPosition
            )
            
            if tankUnitTag == 0 {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: true)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: currentUnitId, tag: currentUnitTag))
            } else if tankUnitTag != 0 && tankUnitTag != currentUnitTag {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: false)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: currentUnitId, tag: currentUnitTag))
                break
            } else if tankUnitTag != 0 && tankUnitTag == currentUnitTag {
                break
            }
        }
    }
}
