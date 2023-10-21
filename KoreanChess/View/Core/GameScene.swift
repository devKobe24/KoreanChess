//
//  GameScene.swift
//  KoreanChess
//
//  Created by Minseong Kang on 2023/10/03.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        Variables.scene = self
        // MARK: - Test Code
        _ = Units()
        
        _ = TankUnit(
            unit: GameUnit(
                unitPosition: CGPoint(x: 3, y: 2),
                unitId: UnitIdentifier.rightSideGreenTank.id,
                tag: 1,
                unitImageName: UnitImageAssets.greenSideTank.imageName
            ), 
            unitDirections: Variables.unitDirections)
    }
}
