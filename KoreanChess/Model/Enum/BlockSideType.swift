//
//  BlockSideType.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/21/23.
//

import OSLog

fileprivate let logger: Logger = Logger()
enum BlockSideType {
    case width
    case height
    
    var value: Int? {
        switch self {
        case .width:
            do {
                let widthValue = try configureBlockWidth()
                return widthValue
            } catch {
                logger.error("\(error.localizedDescription)")
            }
        case .height:
            do {
                let heightValue = try configureBlockHeight()
                return heightValue
            } catch {
                logger.error("\(error.localizedDescription)")
            }
        }
        return nil
    }
}

extension BlockSideType {
    private func configureBlockWidth() throws -> Int {
        guard let space = Position.unitSpacing.value else {
            throw Unwrapping.space
        }
        let blockWidthValue: Int = (space - 2)
        return blockWidthValue
    }
    
    private func configureBlockHeight() throws -> Int {
        guard let space = Position.unitSpacing.value else {
            throw Unwrapping.space
        }
        let blockHeightValue: Int = (space - 2)
        return blockHeightValue
    }
}
