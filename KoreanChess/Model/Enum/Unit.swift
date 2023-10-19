//
//  Unit.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

enum Unit {
    case greenSideSolider
    case redSideSolider
    
    var name: String {
        switch self {
        case .greenSideSolider:
            return "zol_g"
        case .redSideSolider:
            return "zol_r"
        }
    }
}
