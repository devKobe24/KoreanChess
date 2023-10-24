//
//  FieldMetrix.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/20/23.
//

enum FieldMetrix {
    case row
    case column
    
    var value: Int {
        switch self {
        case .row:
            return 9
        case .column:
            return 10
        }
    }
}
