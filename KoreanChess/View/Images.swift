//
//  Images.swift
//  KoreanChess
//
//  Created by Minseong Kang on 2023/10/03.
//

import Foundation
import SpriteKit

class Images {
    
    func setupBackgroundImage() {
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
    
    func setupGameFieldImage() {
        let gameFieldImage = SKSpriteNode(imageNamed: ImageAssets.field.image)
        
        guard let spacing = Variables.spacing() else { return }
        guard let startYposition = Variables.setupStartYposition() else { return }
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
