//
//  Directioning.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/21/23.
//
import Foundation

protocol Directioning {
    var unitPosition: CGPoint { get }
    var unitId: String { get }
    var tag: Int { get }
}
