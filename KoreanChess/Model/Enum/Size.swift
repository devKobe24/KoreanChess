//
//  Size.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/20/23.
//

enum Size {
    case blockWidth
    case blockHeight
    
    var value: Int? {
        switch self {
        case .blockWidth:
            if let blockWidthValue = self.configureBlock(for: .width) {
                return blockWidthValue
            }
        case .blockHeight:
            if let blockHeightValue = self.configureBlock(for: .height) {
                return blockHeightValue
            }
        }
        return nil
    }
}

extension Size {
    private func configureBlock(for sideType: BlockSideType) -> Int? {
        switch sideType {
        case .width:
            return sideType.value
        case .height:
            return sideType.value
        }
    }
}

