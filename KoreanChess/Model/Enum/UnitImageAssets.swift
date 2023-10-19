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
    case greenSideCha
    case redSideCha
    case greenSideElephant
    case redSideElephant
    case greenSideHorse
    case redSideHorse
    
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
        case .greenSideCha:
            return "Green_Cha"
        case .redSideCha:
            return "Red_Cha"
        case .greenSideElephant:
            return "Green_Sang"
        case .redSideElephant:
            return "Red_Sang"
        case .greenSideHorse:
            return "Green_Sang"
        case .redSideHorse:
            return "Red_Sang"
        }
    }
}
