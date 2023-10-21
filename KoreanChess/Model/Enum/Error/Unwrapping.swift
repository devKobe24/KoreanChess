//
//  Unwrapping.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/20/23.
//

import Foundation
import OSLog

fileprivate let logger: Logger = Logger()

enum Unwrapping: LocalizedError {
    case view
    case space
    case tag
    
    var errorlocailzed: Void {
        switch self {
        case .view:
            return logger.debug("⛔️ SKView를 가져오는데 실패하였습니다.")
        case .space:
            return logger.debug("⛔️ Space를 가져오는데 실패하였습니다.")
        case .tag:
            return logger.debug("⛔️ Unit의 tag를 가져오는데 실패하였습니다.")
        }
    }
}
