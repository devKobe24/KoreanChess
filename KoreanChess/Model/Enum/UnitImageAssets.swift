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
    case greenSideTank
    case redSideTank
    case greenSideElephant
    case redSideElephant
    case greenSideHorse
    case redSideHorse
    case greenSideStaff
    case redSideStaff
    case greenKing
    case redKing
    
    var imageName: String {
        switch self {
        case .greenSideSolider:
            return "Green_Zol"
        case .redSideSolider:
            return "Red_Byung"
        case .greenSideCannon:
            return "Green_Po"
        case .redSideCannon:
            return "Red_Po"
        case .greenSideTank:
            return "Green_Tank"
        case .redSideTank:
            return "Red_Tank"
        case .greenSideElephant:
            return "Green_Sang"
        case .redSideElephant:
            return "Red_Sang"
        case .greenSideHorse:
            return "Green_Sang"
        case .redSideHorse:
            return "Red_Sang"
        case .greenSideStaff:
            return "Green_Sa"
        case .redSideStaff:
            return "Red_Sa"
        case .greenKing:
            return "Green_King"
        case .redKing:
            return "Red_King"
        }
    }
}
