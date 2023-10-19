//
//  Initializerable.swift
//  KoreanChess
//
//  Created by Minseong Kang on 10/19/23.
//

protocol Initializerable: AnyObject {
    func setupUnit(with gameUnit: GameUnit)
    func configureBackgroundImage()
    func configureGameFieldImage()
}
