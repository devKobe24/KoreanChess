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
    case leftSideGreenTank
    case rightSideGreenTank
    case leftSideRedTank
    case rightSideRedTank
    case leftSideGreenElephant
    case rightSideGreenElephant
    case leftSideRedElephant
    case rightSideRedElephant
    case leftSideGreenHorse
    case rightSideGreenHorse
    case leftSideRedHorse
    case rightSideRedHorse
    case leftSideGreenStaff
    case rightSideGreenStaff
    case leftSideRedStaff
    case rightSideRedStaff
    case greenKing
    case redKing
    
    var id: String {
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
        case .leftSideGreenTank:
            return "cha_g1"
        case .rightSideGreenTank:
            return "cha_g2"
        case .leftSideRedTank:
            return "cha_r1"
        case .rightSideRedTank:
            return "cha_r2"
        case .leftSideGreenElephant:
            return "sang_g1"
        case .rightSideGreenElephant:
            return "sang_g2"
        case .leftSideRedElephant:
            return "sang_r1"
        case .rightSideRedElephant:
            return "sang_r2"
        case .leftSideGreenHorse:
            return "ma_g1"
        case .rightSideGreenHorse:
            return "ma_g2"
        case .leftSideRedHorse:
            return "ma_r1"
        case .rightSideRedHorse:
            return "ma_r2"
        case .leftSideGreenStaff:
            return "sa_g1"
        case .rightSideGreenStaff:
            return "sa_g2"
        case .leftSideRedStaff:
            return "sa_r1"
        case .rightSideRedStaff:
            return "sa_r2"
        case .greenKing:
            return "king_g1"
        case .redKing:
            return "king_r1"
        }
    }
}
