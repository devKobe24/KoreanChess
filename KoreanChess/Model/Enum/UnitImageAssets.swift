//
//  UnitImageAssets.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

enum UnitImageAssets {
    case greenSideSolider
    case redSideSolider
    case greenSideCannon
    case redSideCannon
    
    var image: String {
        switch self {
        case .greenSideSolider:
            return "Green_Zol"
        case .redSideSolider:
            return "Red_Byung"
        case .greenSideCannon:
            return "Green_Po"
        case .redSideCannon:
            return "Red_Po"
        }
    }
}
