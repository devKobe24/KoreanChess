//
//  ImageAssets.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

enum ImageAssets {
    case background
    case field
    case greenSideSolider
    
    var image: String {
        switch self {
        case .background:
            return "bg"
        case .field:
            return "field"
        case .greenSideSolider:
            return "Green_Zol"
        }
    }
}
