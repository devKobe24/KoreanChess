//
//  UnitPoint.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/22/23.
//

import Foundation

struct UnitPoint {
    var xAxis: Int
    var yAxis: Int
    var unitPostion: CGPoint
    
    init(xAxis: Int, yAxis: Int) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.unitPostion = CGPoint().unitPosition(x: xAxis, y: yAxis)
    }
}
