//
//  Unwrapping.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/20/23.
//

import Foundation
import OSLog

enum Unwrapping: LocalizedError {
    case view
    
    var errorlocailzed: Void {
        switch self {
        case .view:
            return Logger().debug("SKView를 가져오는데 실패하였습니다.")
        }
    }
}
