//
//  Position.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/20/23.
//

import Foundation
import OSLog

enum Position {
    case unitSpacing
    case startX
    case startY
    
    var value: Int? {
        switch self {
        case .unitSpacing:
            do {
                let unitSpacing = try configureSpacing()
                return unitSpacing
            } catch {
                Logger().error("\(error.localizedDescription)")
            }
        case .startX:
            do {
                let startX = try configureSpacing()
                return startX
            } catch {
                Logger().error("\(error.localizedDescription)")
            }
        case .startY:
            do {
                let startY = try configureStartY()
                return startY
            } catch {
                Logger().error("\(error.localizedDescription)")
            }
        }
        return nil
    }
}

extension Position {
    private func configureSpacing() throws -> Int {
        guard let view = Variables.scene.view else {
            throw Unwrapping.view
        }
        
        let viewWidth = Int(view.frame.width)
        
        let spacing = viewWidth / FieldMetrix.column.value
        
        return spacing
    }
}

extension Position {
    private func configureStartY() throws -> Int {
        guard let view = Variables.scene.view else {
            throw Unwrapping.view
        }
        
        let viewHeight = view.frame.height
        
        let spacing = try self.configureSpacing()
        
        let negativeHalfViewHeight = -(viewHeight / 2)
        
        let startY = Int(negativeHalfViewHeight) + (spacing * FieldMetrix.column.value / 2)
        
        return startY
    }
}
