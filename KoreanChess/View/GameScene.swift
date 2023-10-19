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
        _ = Images()
    }
}
