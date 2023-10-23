//
//  TankUnit.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/21/23.
//

import SpriteKit
import OSLog
protocol TankUnitProtocol: AnyObject {
    var unit: GameUnit { get set }
    var tag: Int? { get set }
    var id: String? { get set }
    var xPoint: Int? { get set }
    var yPoint: Int? { get set }
}

extension TankUnitProtocol {
//    var unitYpoint: Int { get set }
    var unitTag: Int {
        get {
            tag = unit.tag
            guard let tag = tag else { return 404 }
            return tag
        }
        set(newTag) {
            tag = newTag
        }
    }
    
    var unitId: String {
        get {
            id = unit.unitId
            guard let id = id else { return "UNIT ERROR" }
            return id
        }
        set(newId) {
            id = newId
        }
    }
    
    var unitXpoint: Int {
        get {
            xPoint = Int(unit.unitPosition.x)
            guard let xPoint = xPoint else { return 404 }
            return xPoint
        }
        set(newXpoint) {
            xPoint = newXpoint
        }
    }
    
    var unitYpoint: Int {
        get {
            yPoint = Int(unit.unitPosition.y)
            guard let yPoint = yPoint else { return 404 }
            return yPoint
        }
        set(newYpoint) {
            yPoint = newYpoint
        }
    }
}

final class TankUnit: TankUnitProtocol {
    var unit: GameUnit
    var tag: Int?
    var id: String?
    var xPoint: Int?
    var yPoint: Int?
    
    var unitTag: Int
    var unitId: String
    var unitXpoint: Int
    var unitYpoint: Int
    
    var unitDirections: [Direction]
    let guideBlock = GuideBlock()
    let logger: Logger = Logger()
    
    init(unit: GameUnit, unitDirections: [Direction]) {
        self.unit = unit
        self.unitDirections = unitDirections
        self.unitTag = self.unit.tag
        self.unitId = self.unit.unitId
        self.unitXpoint = Int(self.unit.unitPosition.x)
        self.unitYpoint = Int(self.unit.unitPosition.y)
        
        moveLeftTankUnit(unitTag: unitTag, unitId: unitId, unitXpoint: unitXpoint, unitYpoint: unitYpoint)
        moveRightTankUnit(unitTag: unitTag, unitId: unitId, unitXpoint: unitXpoint, unitYpoint: unitYpoint)
        moveUpTankUnit(unitTag: unitTag, unitId: unitId, unitXpoint: unitXpoint, unitYpoint: unitYpoint)
        moveDownTankUnit(unitTag: unitTag, unitId: unitId, unitXpoint: unitXpoint, unitYpoint: unitYpoint)
        moveDiagonalTankUnit()
        moveDigonalCase(type: .leftDownToRightUp)
    }
}

extension TankUnit {
    private func moveLeftTankUnit(unitTag: Int, unitId: String, unitXpoint: Int, unitYpoint: Int) {
        /// - 유닛의 왼쪽 방향 체크 로직
        let checkLeftDirectionPointRange = 0..<unitXpoint
        for checkPoint in checkLeftDirectionPointRange.reversed() {
            let currentUnitPosition = CGPoint(x: checkPoint, y: unitYpoint)
            
            let tankUnitTag = Variables.getUnitDirectionTag(
                unitDirections: unitDirections,
                unitPosition: currentUnitPosition
            )
            
            if tankUnitTag == 0 {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: true)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
            } else if tankUnitTag != 0 && tankUnitTag != unitTag {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: false)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
                break
            } else if tankUnitTag != 0 && tankUnitTag == unitTag {
                break
            }
        }
    }
}

extension TankUnit {
    private func moveRightTankUnit(unitTag: Int, unitId: String, unitXpoint: Int, unitYpoint: Int) {
        /// - 유닛의 오른쪽 방향 체크 로직
        let checkRightDirectionPointRange = (unitXpoint + 1)..<FieldMetrix.row.value
        for checkPoint in checkRightDirectionPointRange {
            let currentUnitPosition = CGPoint(x: checkPoint, y: unitYpoint)
            
            
            let tankUnitTag = Variables.getUnitDirectionTag(
                unitDirections: unitDirections,
                unitPosition: currentUnitPosition
            )
            
            if tankUnitTag == 0 {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: true)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
            } else if tankUnitTag != 0 && tankUnitTag != unitTag {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: false)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
                break
            } else if tankUnitTag != 0 && tankUnitTag == unitTag {
                break
            }
        }
    }
}

extension TankUnit {
    private func moveUpTankUnit(unitTag: Int, unitId: String, unitXpoint: Int, unitYpoint: Int) {
        /// - 유닛의 위 방향 체크 로직
        let checkUpDirectionPointRange = (0..<unitYpoint)
        for checkPoint in checkUpDirectionPointRange.reversed() {
            let currentUnitPosition = CGPoint(x: unitXpoint, y: checkPoint)
            
            
            let tankUnitTag = Variables.getUnitDirectionTag(
                unitDirections: unitDirections,
                unitPosition: currentUnitPosition
            )
            
            if tankUnitTag == 0 {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: true)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
            } else if tankUnitTag != 0 && tankUnitTag != unitTag {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: false)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
                break
            } else if tankUnitTag != 0 && tankUnitTag == unitTag {
                break
            }
        }
    }
}

extension TankUnit {
    private func moveDownTankUnit(unitTag: Int, unitId: String, unitXpoint: Int, unitYpoint: Int) {
        /// - 유닛의 아래 방향 체크 로직
        let checkDownDirectionPointRange = (unitYpoint + 1)..<FieldMetrix.column.value
        for checkPoint in checkDownDirectionPointRange {
            let currentUnitPosition = CGPoint(x: unitXpoint, y: checkPoint)
            
            let tankUnitTag = Variables.getUnitDirectionTag(
                unitDirections: unitDirections,
                unitPosition: currentUnitPosition
            )
            
            if tankUnitTag == 0 {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: true)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
            } else if tankUnitTag != 0 && tankUnitTag != unitTag {
                guideBlock.configureGuideBlock(position: currentUnitPosition, movable: false)
                Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
                break
            } else if tankUnitTag != 0 && tankUnitTag == unitTag {
                break
            }
        }
    }
}

extension TankUnit {
    private func moveDiagonalTankUnit() {
 
        
        
        
        
        
        let greenSideRightDownCornerPoint = UnitPosition.rightDownCorner(x: 5, y: 9).point
        let redSideRightDownCornerPoint = UnitPosition.rightDownCorner(x: 5, y: 2).point
        
        let greenSideLeftUpCornerPoint = UnitPosition.leftUpCorner(x: 3, y: 7).point
        let redSideLeftUpCornerPoint = UnitPosition.leftUpCorner(x: 3, y: 0).point
        
        let greenSideRightUpCornerPoint = UnitPosition.rightUpCorner(x: 5, y: 7).point
        let redSideRightUpCornerPoint = UnitPosition.rightUpCorner(x: 5, y: 0).point
        
       
    }
}

extension TankUnit {
    private func moveDigonalCase(type: DigonalDirectionCase) {
        switch type {
        case .leftDownToRightUp:
            return moveLeftDownToRightUpDigonalMove(unitTag: self.unitTag, unitId: self.unitId, unitXpoint: unitXpoint, unitYpoint: unitYpoint)
        }
    }
    
    private func moveLeftDownToRightUpDigonalMove(unitTag: Int, unitId: String, unitXpoint: Int, unitYpoint: Int) {
        let greenSideLeftDownCornerPoint = DigonalDirectionCase.leftDownToRightUp.position.greenSide
        let redSideLeftDownCornerPoint = DigonalDirectionCase.leftDownToRightUp.position.redSide
        
        if greenSideLeftDownCornerPoint == unit.unitPosition || redSideLeftDownCornerPoint == unit.unitPosition {
            for checkPoint in 1..<3 {
                let currentUnitPosition = CGPoint(x: unitXpoint + checkPoint, y: unitYpoint - checkPoint)
                
                let tankUnitTag = Variables.getUnitDirectionTag(
                    unitDirections: unitDirections,
                    unitPosition: currentUnitPosition
                )
                if tankUnitTag == 0 {
                    guideBlock.configureGuideBlock(position: currentUnitPosition, movable: true)
                    Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
                } else if tankUnitTag != 0 && tankUnitTag != unitTag {
                    guideBlock.configureGuideBlock(position: currentUnitPosition, movable: false)
                    Variables.unitDirections.append(Direction(unitPosition: currentUnitPosition, unitId: unitId, tag: unitTag))
                    break
                } else if tankUnitTag != 0 && tankUnitTag == unitTag {
                    break
                }
            }
        }
    }
}
