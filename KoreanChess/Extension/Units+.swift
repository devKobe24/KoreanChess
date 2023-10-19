//
//  Units+.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

import SpriteKit

extension Units: Initializerable {
    func setupUnit(with gameUnit: GameUnit) {
        Variables.allUnits.append(gameUnit)
        
        let allUnits = Variables.allUnits
        for unit in allUnits {
            let unitNode = SKSpriteNode()
            unitNode.texture = SKTexture(imageNamed: unit.unitImageName)
            
            let unitXposition = Int(unit.unitPosition.x)
            let unitYposition = Int(unit.unitPosition.y)
            
            guard let startXposition = Variables.startX else { return }
            guard let startYposition = Variables.startY else { return }
            
            guard let unitSpacing = Variables.unitSpacing else { return }
            
            let xPosition = (startXposition + (unitSpacing * unitXposition))
            let yPosition = (startYposition - (unitSpacing * unitYposition))
            
            guard let nodeWidthAndHeight = Variables.unitSpacing else { return }
            
            unitNode.position = CGPoint(x: xPosition, y: yPosition)
            unitNode.size = CGSize(width: nodeWidthAndHeight, height: nodeWidthAndHeight)
            unitNode.name = unit.unitName
            unitNode.zPosition = 0
            
            Variables.scene.addChild(unitNode)
        }
    }
    
    func configureBackgroundImage() {
        let backgroundImage = SKSpriteNode(imageNamed: BackgroundImageAssets.background.image)
        let overallSceneSize = Variables.scene.frame.size
        backgroundImage.size = overallSceneSize
        
        let xPosition = Variables.scene.frame.width / 2
        let yPosition = -Variables.scene.frame.height / 2
        backgroundImage.position = CGPoint(x: xPosition, y: yPosition)
        
        backgroundImage.zPosition = -2
        
        backgroundImage.name = NodeName.backgroundImage.localization
        
        Variables.scene.addChild(backgroundImage)
    }
    
    func configureGameFieldImage() {
        let gameFieldImage = SKSpriteNode(imageNamed: BackgroundImageAssets.field.image)
        
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
