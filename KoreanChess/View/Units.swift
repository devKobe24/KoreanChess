//
//  Units.swift
//  KoreanChess
//
//  Created by Minseong Kang on 2023/10/03.
//

import Foundation
import SpriteKit

final class Units {
    var soldierID = 0
    let fieldColumRange = (0...8)
    
    init() {
        configureBackgroundImage()
        configureGameFieldImage()
        
        configureGreenSideSoldierUnit()
        configureRedSideSoldierUnit()
        
        configureLeftGreenSideCannonUnit()
        configureRightGreenSideCannonUnit()
        
        configureLeftRedSideCannonUnit()
        configureRightRedSideCannonUnit()
    }
}

extension Units {
    private func configureGreenSideSoldierUnit() {
        for soldierPosition in fieldColumRange {
            if soldierPosition % 2 == 0 {
                soldierID += 1
                
                let greenSideSoldierUnit = GameUnit(
                    unitPosition: CGPoint(x: soldierPosition, y: 6),
                    unitName: UnitIdentifier.greenSideSolider.name+"\(soldierID)",
                    tag: 1,
                    unitImageName: UnitImageAssets.greenSideSolider.image
                )
                self.setupUnit(with: greenSideSoldierUnit)
            }
        }
    }
    
    private func configureRedSideSoldierUnit() {
        for soldierPosition in fieldColumRange {
            if soldierPosition % 2 == 0 {
                soldierID += 1
                
                let redSideSolierUnit = GameUnit(
                    unitPosition: CGPoint(x: soldierPosition, y: 3),
                    unitName: UnitIdentifier.redSideSolider.name+"\(soldierID)",
                    tag: 2,
                    unitImageName: UnitImageAssets.redSideSolider.image
                )
                self.setupUnit(with: redSideSolierUnit)
            }
        }
    }
}

extension Units {
    private func configureLeftGreenSideCannonUnit() {
        let leftGreenCannonUnitPosition = CGPoint(x: 1, y: 7)

        let leftSideGreenCannonUnit = GameUnit(
            unitPosition: leftGreenCannonUnitPosition,
            unitName: UnitIdentifier.leftSideGreenCannon.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCannon.image
        )
        
        self.setupUnit(with: leftSideGreenCannonUnit)
    }
    
    private func configureRightGreenSideCannonUnit() {
        let rightGreenCannonUnitPosition = CGPoint(x: 7, y: 7)
        
        let rightGreenSideCannonUnit = GameUnit(
            unitPosition: rightGreenCannonUnitPosition,
            unitName: UnitIdentifier.rightSideGreenCannon.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCannon.image
        )
        
        self.setupUnit(with: rightGreenSideCannonUnit)
    }
}

extension Units {
    private func configureLeftRedSideCannonUnit() {
        let leftRedCannonUnitPosition = CGPoint(x: 1, y: 2)
        
        let leftRedSideCannonUnit = GameUnit(
            unitPosition: leftRedCannonUnitPosition,
            unitName: UnitIdentifier.leftSideRedCannon.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCannon.image
        )
        
        self.setupUnit(with: leftRedSideCannonUnit)
    }
    
    private func configureRightRedSideCannonUnit() {
        let rightRedCannonUnitPosition = CGPoint(x: 7, y: 2)
        
        let rightRedSideCannonUnit = GameUnit(
            unitPosition: rightRedCannonUnitPosition,
            unitName: UnitIdentifier.rightSideRedCannon.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCannon.image
        )
        
        self.setupUnit(with: rightRedSideCannonUnit)
    }
}
