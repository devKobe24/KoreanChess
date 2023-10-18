//
//  NodeName.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

enum NodeName {
    case backgroundImage
    case gameFieldImage
    
    var localization: String {
        switch self {
        case .backgroundImage:
            return "backgroundImage"
        case .gameFieldImage:
            return "gameFieldImage"
        }
    }
}
