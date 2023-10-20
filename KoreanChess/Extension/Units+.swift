//
//  Units+.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

import SpriteKit

extension Units: Initializerable, UnitConfigurable {
    func configureUnit(
        unitPosition: CGPoint,
        unitName: String,
        tag: Int,
        unitImageName: String,
        completion: @escaping (GameUnit) -> Void
    ) {
        let unit = GameUnit(
            unitPosition: unitPosition,
            unitName: unitName,
            tag: tag,
            unitImageName: unitImageName
        )
        
        completion(unit)
    }
    
    func setupUnit(with gameUnit: GameUnit) {
        Variables.allUnits.append(gameUnit)
        
        let allUnits = Variables.allUnits
        for unit in allUnits {
            let unitNode = SKSpriteNode()
            unitNode.texture = SKTexture(imageNamed: unit.unitImageName)
            
            let unitXposition = Int(unit.unitPosition.x)
            let unitYposition = Int(unit.unitPosition.y)
            
            guard let startXposition = Position.startX.value else { return }
            guard let startYposition = Position.startY.value else { return }
            
            guard let unitSpacing = Position.unitSpacing.value else { return }
            
            let xPosition = (startXposition + (unitSpacing * unitXposition))
            let yPosition = (startYposition - (unitSpacing * unitYposition))
            
            guard let nodeWidthAndHeight = Position.unitSpacing.value else { return }
            
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
        
        guard let spacing = Position.unitSpacing.value else { return }
        guard let startYposition = Position.startY.value else { return }
        let width = spacing * FieldMetrix.row.value
        let height = spacing * FieldMetrix.column.value
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
