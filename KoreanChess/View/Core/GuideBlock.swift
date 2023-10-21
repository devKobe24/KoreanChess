//
//  GuideBlock.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/20/23.
//

import SpriteKit

final class GuideBlock {
    func configureGuideBlock(position: CGPoint, movable: Bool) {
        let block = SKSpriteNode()
        guard let width = Size.blockWidth.value else {
            return
        }
        guard let height = Size.blockHeight.value else {
            return
        }
        block.size = CGSize(width: width, height: height)
        
        let movableImage = movable ? GuideBlockType.possible.image : GuideBlockType.impossible.image
        block.texture = SKTexture(imageNamed: movableImage)
        block.alpha = 0.5
        block.zPosition = 1
        
        guard let startX = Position.startX.value else { return }
        guard let startY = Position.startY.value else { return }
        guard let unitSpacing = Position.unitSpacing.value else { return }
        
        let xPosition = startX + (Int(position.x) * unitSpacing)
        let yPosition = startY - (Int(position.y) * unitSpacing)
        
        block.position = CGPoint(x: xPosition, y: yPosition)
        
        Variables.scene.addChild(block)
    }
}
