//
//  UnitIdentifier.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

enum UnitIdentifier {
    case greenSideSolider
    case redSideSolider
    case leftSideGreenCannon
    case rightSideGreenCannon
    case leftSideRedCannon
    case rightSideRedCannon
    case leftSideGreenVehicle
    case rightSideGreenVehicle
    case leftSideRedVehicle
    case rightSideRedVehicel
    
    var name: String {
        switch self {
        case .greenSideSolider:
            return "zol_g"
        case .redSideSolider:
            return "zol_r"
        case .leftSideGreenCannon:
            return "po_g1"
        case .rightSideGreenCannon:
            return "po_g2"
        case .leftSideRedCannon:
            return "po_r1"
        case .rightSideRedCannon:
            return "po_r2"
        case .leftSideGreenVehicle:
            return "cha_g1"
        case .rightSideGreenVehicle:
            return "cha_g2"
        case .leftSideRedVehicle:
            return "cha_r1"
        case .rightSideRedVehicel:
            return "cha_r2"
        }
    }
}
