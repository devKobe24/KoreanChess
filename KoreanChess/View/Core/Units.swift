//
//  Units.swift
//  KoreanChess
//
//  Created by Minseong Kang on 2023/10/03.
//

import Foundation
import SpriteKit

final class Units {
    var soldierID = 0
    let soldierPositionRange = (0...8).filter {
        $0 % 2 == 0
    }
    
    init() {
        // MARK: - background
        configureBackgroundImage()
        configureGameFieldImage()
        // MARK: - 졸
        configureGreenSideSoldierUnit()
        configureRedSideSoldierUnit()
        // MARK: - 파란색 포
        setupLeftGreenCannon()
        setupRightGreenCannon()
        // MARK: - 빨간색 포
        setupLeftRedCannon()
        setupRightRedCannon()
        // MARK: - 파란색 차
        setupLeftGreenTank()
        setupRightGreenTank()
        // MARK: - 빨간색 차
        setupLeftRedTank()
        setupRightRedTank()
        // MARK: - 파란색 상
        setupLeftGreenElephant()
        setupRightGreenElephant()
        // MARK: - 빨간색 상
        setupLeftRedElephant()
        setupRightRedElephant()
        // MARK: - 파란색 마
        setupLeftGreenHorse()
        setupRightGreenHorse()
        // MARK: - 빨간색 마
        setupLeftRedHorse()
        setupRightRedHorse()
        // MARK: - 파란색 사
        setupLeftGreenStaff()
        setupRightGreenStaff()
        // MARK: - 빨간색 사
        setupLeftRedStaff()
        setupRightRedStaff()
        // MARK: - 파란색 왕
        setupGreenKing()
        // MARK: - 빨간색 왕
        setupRedKing()
    }
}
// MARK: - 졸 구성 및 구현
extension Units {
    private func configureGreenSideSoldierUnit() {
        soldierPositionRange.forEach {
            self.configureUnit(
                nation: .green,
                unitPosition: .down(x: $0, y: 6),
                unitId: .greenSideSolider(soldierID),
                tag: .green,
                unitImageName: .greenSideSolider
            )
        }
    }
    
    private func configureRedSideSoldierUnit() {
        soldierPositionRange.forEach {
            self.configureUnit(
                nation: .green,
                unitPosition: .up(x: $0, y: 3),
                unitId: .redSideSolider(soldierID),
                tag: .red,
                unitImageName: .redSideSolider
            )
        }
    }
}
// MARK: - 포 구성
extension Units {
    private func configureCannonUnit(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        self.configureUnit(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
    }
}
// MARK: - 차 구성
extension Units {
    private func configureTankUnit(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        self.configureUnit(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
    }
}

// MARK: - 상 구성
extension Units {
    private func configureElephantUnit(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        self.configureUnit(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
    }
}

// MARK: - 마 구성
extension Units {
    private func configureHorseUnit(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        self.configureUnit(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
    }
}

// MARK: - 사 구성
extension Units {
    private func configureStaffUnit(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        self.configureUnit(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
    }
}

// MARK: - 왕 구성
extension Units {
    private func configureKing(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        self.configureUnit(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
    }
}

// MARK: - 포 구현
extension Units {
    private func setupLeftGreenCannon() {
        configureCannonUnit(
            nation: .green,
            unitPosition: .left(x: 1, y: 7),
            unitId: .leftSideGreenCannon,
            tag: .green,
            unitImageName: .greenSideCannon
        )
    }
    private func setupRightGreenCannon() {
        configureCannonUnit(
            nation: .green,
            unitPosition: .right(x: 7, y: 7),
            unitId: .rightSideGreenCannon,
            tag: .green,
            unitImageName: .greenSideCannon
        )
    }
    private func setupLeftRedCannon() {
        configureCannonUnit(
            nation: .red,
            unitPosition: .left(x: 1, y: 2),
            unitId: .leftSideRedCannon,
            tag: .red,
            unitImageName: .redSideCannon
        )
    }
    private func setupRightRedCannon() {
        configureCannonUnit(
            nation: .red,
            unitPosition: .right(x: 7, y: 2),
            unitId: .rightSideRedCannon,
            tag: .red,
            unitImageName: .redSideCannon
        )
    }
}

// MARK: - 차 구현
extension Units {
    private func setupLeftGreenTank() {
        configureTankUnit(
            nation: .green,
            unitPosition: .left(x: 0, y: 9),
            unitId: .leftSideGreenTank,
            tag: .green,
            unitImageName: .greenSideTank
        )
    }
    
    private func setupRightGreenTank() {
        configureTankUnit(
            nation: .green,
            unitPosition: .right(x: 8, y: 9),
            unitId: .rightSideGreenTank,
            tag: .green,
            unitImageName: .greenSideTank
        )
    }
    
    private func setupLeftRedTank() {
        configureTankUnit(
            nation: .red,
            unitPosition: .left(x: 0, y: 0),
            unitId: .leftSideRedTank,
            tag: .red,
            unitImageName: .redSideTank
        )
    }
    
    private func setupRightRedTank() {
        configureTankUnit(
            nation: .red,
            unitPosition: .right(x: 8, y: 0),
            unitId: .rightSideRedTank,
            tag: .red,
            unitImageName: .redSideTank
        )
    }
}

// MARK: - 상 구현
extension Units {
    private func setupLeftGreenElephant() {
        configureElephantUnit(
            nation: .green,
            unitPosition: .left(x: 1, y: 9),
            unitId: .leftSideGreenElephant,
            tag: .green,
            unitImageName: .greenSideElephant
        )
    }
    
    private func setupRightGreenElephant() {
        configureElephantUnit(
            nation: .green,
            unitPosition: .right(x: 7, y: 9),
            unitId: .rightSideGreenElephant,
            tag: .green,
            unitImageName: .greenSideElephant
        )
    }
    
    private func setupLeftRedElephant() {
        configureElephantUnit(
            nation: .red,
            unitPosition: .left(x: 1, y: 0),
            unitId: .leftSideRedElephant,
            tag: .red,
            unitImageName: .redSideElephant
        )
    }
    
    private func setupRightRedElephant() {
        configureElephantUnit(
            nation: .red,
            unitPosition: .right(x: 7, y: 0),
            unitId: .rightSideRedElephant,
            tag: .red,
            unitImageName: .redSideElephant
        )
    }
}

// MARK: - 차 구현
extension Units {
    private func setupLeftGreenHorse() {
        configureHorseUnit(
            nation: .green,
            unitPosition: .left(x: 2, y: 9),
            unitId: .leftSideGreenHorse,
            tag: .green,
            unitImageName: .greenSideHorse
        )
    }
    
    private func setupRightGreenHorse() {
        configureHorseUnit(
            nation: .green,
            unitPosition: .right(x: 6, y: 9),
            unitId: .rightSideGreenHorse,
            tag: .green,
            unitImageName: .greenSideHorse
        )
    }
    
    private func setupLeftRedHorse() {
        configureHorseUnit(
            nation: .red,
            unitPosition: .left(x: 2, y: 0),
            unitId: .leftSideRedHorse,
            tag: .red,
            unitImageName: .redSideHorse
        )
    }
    
    private func setupRightRedHorse() {
        configureHorseUnit(
            nation: .red,
            unitPosition: .right(x: 6, y: 0),
            unitId: .rightSideRedHorse,
            tag: .red,
            unitImageName: .redSideHorse
        )
    }
}

// MARK: - 사 구현
extension Units {
    private func setupLeftGreenStaff() {
        configureStaffUnit(
            nation: .green,
            unitPosition: .left(x: 3, y: 9),
            unitId: .leftSideGreenStaff,
            tag: .green,
            unitImageName: .greenSideStaff
        )
    }
    
    private func setupRightGreenStaff() {
        configureStaffUnit(
            nation: .green,
            unitPosition: .right(x: 5, y: 9),
            unitId: .rightSideGreenStaff,
            tag: .green,
            unitImageName: .greenSideStaff
        )
    }
    
    private func setupLeftRedStaff() {
        configureStaffUnit(
            nation: .red,
            unitPosition: .left(x: 3, y: 0),
            unitId: .leftSideRedStaff,
            tag: .red,
            unitImageName: .redSideStaff
        )
    }
    
    private func setupRightRedStaff() {
        configureStaffUnit(
            nation: .red,
            unitPosition: .right(x: 5, y: 0),
            unitId: .rightSideRedStaff,
            tag: .red,
            unitImageName: .redSideStaff
        )
    }
}

extension Units {
    private func setupGreenKing() {
        configureKing(
            nation: .green,
            unitPosition: .down(x: 4, y: 8),
            unitId: .greenKing,
            tag: .green,
            unitImageName: .greenKing
        )
    }
    
    private func setupRedKing() {
        configureKing(
            nation: .red,
            unitPosition: .up(x: 4, y: 1),
            unitId: .redKing,
            tag: .red,
            unitImageName: .redKing
        )
    }
}



// MARK: - 유닛 구성 및 구현 - 1
extension Units {
    private func configureUnit(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) {
        let unit = self.makePiece(
            nation: nation,
            unitPosition: unitPosition,
            unitId: unitId,
            tag: tag,
            unitImageName: unitImageName
        )
        
        unit.setup { unit, direction in
            self.setupUnit(with: unit)
            self.setupDirection(target: direction)
        }
    }
}

// MARK: - 유닛 구성 및 구현 - 2
extension Units {
    private func makePiece(
        nation: Tag,
        unitPosition: UnitPosition,
        unitId: UnitIdentifier,
        tag: Tag,
        unitImageName: UnitImageAssets
    ) -> Piece {
        
        switch nation {
        case .green:
            let greenPiece: Piece = Piece(
                unitPosition: unitPosition,
                unitId: unitId,
                tag: tag,
                unitImageName: unitImageName
            )
            
            return greenPiece
        case .red:
            let redPiece: Piece = Piece(
                unitPosition: unitPosition,
                unitId: unitId,
                tag: tag,
                unitImageName: unitImageName
            )
            
            return redPiece
        }
    }
}

