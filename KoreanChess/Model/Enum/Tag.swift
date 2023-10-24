//
//  Tag.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/22/23.
//

enum Tag {
    case green
    case red
    
    var id: Int {
        switch self {
        case .green:
            return 1
        case .red:
            return 2
        }
    }
}
