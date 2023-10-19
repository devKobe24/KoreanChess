//
//  Images.swift
//  KoreanChess
//
//  Created by Minseong Kang on 2023/10/03.
//

import Foundation
import SpriteKit

final class Images {
    init() {
        configureBackgroundImage()
        configureGameFieldImage()
        configureGreenSideSoldierUnit()
        setupGreenSideSoldierUnit()
    }
    
    private func configureBackgroundImage() {
        let backgroundImage = SKSpriteNode(imageNamed: ImageAssets.background.image)
        let overallSceneSize = Variables.scene.frame.size
        backgroundImage.size = overallSceneSize
        
        let xPosition = Variables.scene.frame.width / 2
        let yPosition = -Variables.scene.frame.height / 2
        backgroundImage.position = CGPoint(x: xPosition, y: yPosition)
        
        backgroundImage.zPosition = -2
        
        backgroundImage.name = NodeName.backgroundImage.localization
        
        Variables.scene.addChild(backgroundImage)
    }
}

extension Images {
    private func configureGameFieldImage() {
        let gameFieldImage = SKSpriteNode(imageNamed: ImageAssets.field.image)
        
        guard let spacing = Variables.unitSpacing else { return }
        guard let startYposition = Variables.startY else { return }
        let width = spacing * Variables.row
        let height = spacing * Variables.column
        let xPosition = (spacing / 2)
        let yPosition = (startYposition + (spacing / 2))
        
        gameFieldImage.size = CGSize(width: width, height: height)
        gameFieldImage.name = NodeName.gameFieldImage.localization
        gameFieldImage.zPosition = -1
        gameFieldImage.anchorPoint = CGPoint(x: 0, y: 1)
        gameFieldImage.position = CGPoint(x: xPosition, y: yPosition)
        
        Variables.scene.addChild(gameFieldImage)
    }
}

extension Images {
    private func configureGreenSideSoldierUnit() {
        var soldierID = 0
        let fieldColumRange = (0...8)
        
        for soldierPosition in fieldColumRange {
            if soldierPosition % 2 == 0 {
                soldierID += 1
                let greenSideSoldierUnit = GameUnit(
                    unitPosition: CGPoint(x: soldierPosition, y: 6),
                    unitName: Unit.greenSideSolider.name+"\(soldierID)",
                    tag: 1,
                    unitImageName: ImageAssets.greenSideSolider.image
                )
                Variables.allUnits.append(greenSideSoldierUnit)
            }
        }
    }
    
    private func setupGreenSideSoldierUnit() {
        let allUnits = Variables.allUnits
        for unit in allUnits {
            let greenSideSolider = SKSpriteNode()
            greenSideSolider.texture = SKTexture(imageNamed: unit.unitImageName)
            
            let unitXposition = Int(unit.unitPosition.x)
            let unitYposition = Int(unit.unitPosition.y)
            
            guard let startXposition = Variables.startX else { return }
            guard let startYposition = Variables.startY else { return }
            
            guard let unitSpacing = Variables.unitSpacing else { return }
            
            let xPosition = (startXposition + (unitSpacing * unitXposition))
            let yPosition = (startYposition - (unitSpacing * unitYposition))
            
            guard let nodeWidthAndHeight = Variables.unitSpacing else { return }
            
            greenSideSolider.position = CGPoint(x: xPosition, y: yPosition)
            greenSideSolider.size = CGSize(width: nodeWidthAndHeight, height: nodeWidthAndHeight)
            greenSideSolider.name = unit.unitName
            greenSideSolider.zPosition = 0
            
            Variables.scene.addChild(greenSideSolider)
        }
    }
}
