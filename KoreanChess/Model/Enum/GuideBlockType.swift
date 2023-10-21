//
//  GuideBlockType.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/21/23.
//

enum GuideBlockType {
    case possible
    case impossible
    
    var image: String {
        switch self {
        case .possible:
            return "guide_G"
        case .impossible:
            return "guide_R"
        }
    }
}
