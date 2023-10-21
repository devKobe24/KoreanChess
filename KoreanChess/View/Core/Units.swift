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
    let fieldColumRange = (0...8)
    
    init() {
        // MARK: - background
        configureBackgroundImage()
        configureGameFieldImage()
        // MARK: - 졸
        configureGreenSideSoldierUnit()
        configureRedSideSoldierUnit()
        // MARK: - 파란색 포
        configureLeftGreenSideCannonUnit()
        configureRightGreenSideCannonUnit()
        // MARK: - 빨간색 포
        configureLeftRedSideCannonUnit()
        configureRightRedSideCannonUnit()
        // MARK: - 파란색 차
        configureLeftGreenSideTank()
        configureRightGreenSideTank()
        // MARK: - 빨간색 차
        configureLeftRedSideVehicle()
        configureRightRedSideVehicle()
        // MARK: - 파란색 상
        configureLeftGreenElephant()
        configureRightGreenElephant()
        // MARK: - 빨간생 상
        configureLeftRedElephant()
        configureRightRedElephant()
        // MARK: - 파란색 마
        configureLeftGreenHorse()
        configureRightGreenHorse()
        // MARK: - 빨간색 마
        configureLeftRedHorse()
        configureRightRedHorse()
        // MARK: - 파란색 사
        configureLeftGreenStaff()
        configureRightGreenStaff()
        // MARK: - 빨간색 사
        configureLeftRedStaff()
        configureRightRedStaff()
        // MARK: - 파란색 왕
        configureGreenKing()
        // MARK: - 빨간색 왕
        configureRedKing()
    }
}
// MARK: - 졸 구성 및 구현
extension Units {
    
    private func configureGreenSideSoldierUnit() {
        for soldierPosition in fieldColumRange {
            if soldierPosition % 2 == 0 {
                soldierID += 1
                
                self.configureUnit(
                    unitPosition: CGPoint(x: soldierPosition, y: 6),
                    unitId: UnitIdentifier.greenSideSolider.id+"\(soldierID)",
                    tag: 1,
                    unitImageName: UnitImageAssets.greenSideSolider.imageName
                ) { [weak self] greenSideSoldierUnit in
                    guard let self = self else { return }
                    self.setupUnit(with: greenSideSoldierUnit)
                }
            }
        }
    }
    
    private func configureRedSideSoldierUnit() {
        for soldierPosition in fieldColumRange {
            if soldierPosition % 2 == 0 {
                soldierID += 1
                
                self.configureUnit(
                    unitPosition: CGPoint(x: soldierPosition, y: 3),
                    unitId: UnitIdentifier.redSideSolider.id+"\(soldierID)",
                    tag: 2,
                    unitImageName: UnitImageAssets.redSideSolider.imageName
                ) { [weak self] redSideSoldierUnit in
                    guard let self = self else { return }
                    self.setupUnit(with: redSideSoldierUnit)
                }
            }
        }
    }
}
// MARK: - 파란색 포 구성 및 구현
extension Units {
    private func configureLeftGreenSideCannonUnit() {
        self.configureUnit(
            unitPosition: CGPoint(x: 1, y: 7),
            unitId: UnitIdentifier.leftSideGreenCannon.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCannon.imageName
        ) { [weak self] leftSideGreenCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: leftSideGreenCannonUnit)
        }
    }
    
    private func configureRightGreenSideCannonUnit() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 7),
            unitId: UnitIdentifier.rightSideGreenCannon.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCannon.imageName
        ) { [weak self] rightGreenSideCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: rightGreenSideCannonUnit)
        }
    }
}
// MARK: - 빨간색 포 구성 및 구현
extension Units {
    private func configureLeftRedSideCannonUnit() {
        self.configureUnit(
            unitPosition: CGPoint(x: 1, y: 2),
            unitId: UnitIdentifier.leftSideRedCannon.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCannon.imageName
        ) { [weak self] leftRedSideCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideCannonUnit)
        }
        
        self.configureDirection(
            unitPosition: CGPoint(x: 1, y: 2),
            unitId: UnitIdentifier.leftSideRedCannon.id,
            tag: 2
        ) { [weak self] direction in
                guard let self = self else { return }
                self.setupDirection(target: direction)
            }
    }
    
    private func configureRightRedSideCannonUnit() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 2),
            unitId: UnitIdentifier.rightSideRedCannon.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCannon.imageName
        ) { [weak self] rightRedSideCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: rightRedSideCannonUnit)
        }
    }
}

// MARK: - 파란색 차 구성 및 구현
extension Units {
    private func configureLeftGreenSideTank() {
        self.configureUnit(
            unitPosition: CGPoint(x: 0, y: 9),
            unitId: UnitIdentifier.leftSideGreenTank.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideTank.imageName
        ) { [weak self] gameUnit in
            guard let self = self else { return }
            self.setupUnit(with: gameUnit)
        }
        
        self.configureDirection(
            unitPosition: CGPoint(x: 0, y: 9),
            unitId: UnitIdentifier.leftSideGreenTank.id,
            tag: 1) { [weak self] direction in
                guard let self = self else { return }
                self.setupDirection(target: direction)
            }
    }
    
    private func configureRightGreenSideTank() {
        self.configureUnit(
            unitPosition: CGPoint(x: 8, y: 9),
            unitId: UnitIdentifier.rightSideRedTank.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideTank.imageName
        ) { [weak self] gameUnit in
            guard let self = self else { return }
            self.setupUnit(with: gameUnit)
        }
    }
}

// MARK: - 빨간색 차 구성 및 구현
extension Units {
    private func configureLeftRedSideVehicle() {
        self.configureUnit(
            unitPosition: CGPoint(x: 0, y: 0),
            unitId: UnitIdentifier.leftSideRedTank.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideTank.imageName
        ) { [weak self] leftRedSideCha in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideCha)
        }
    }
    
    private func configureRightRedSideVehicle() {
        self.configureUnit(
            unitPosition: CGPoint(x: 8, y: 0),
            unitId: UnitIdentifier.rightSideRedTank.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideTank.imageName
        ) { [weak self] rightRedSideCha in
            guard let self = self else { return }
            self.setupUnit(with: rightRedSideCha)
        }
    }
}

// MARK: - 파란색 상 구성 및 구현
extension Units {
    private func configureLeftGreenElephant() {
        self.configureUnit(
            unitPosition: CGPoint(x: 1, y: 9),
            unitId: UnitIdentifier.leftSideGreenElephant.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideElephant.imageName
        ) { [weak self] leftGreenSideElephant in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideElephant)
        }
    }
    
    private func configureRightGreenElephant() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 9),
            unitId: UnitIdentifier.rightSideGreenElephant.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideElephant.imageName
        ) { [weak self] rightGreenSideElephant in
            guard let self = self else { return }
            self.setupUnit(with: rightGreenSideElephant)
        }
    }
}

// MARK: - 빨간색 상 구성 및 구현
extension Units {
    private func configureLeftRedElephant() {
        self.configureUnit(
            unitPosition: CGPoint(x: 1, y: 0),
            unitId: UnitIdentifier.leftSideRedElephant.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideElephant.imageName
        ) { [weak self] leftRedSideElephant in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideElephant)
        }
    }
    
    private func configureRightRedElephant() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 0),
            unitId: UnitIdentifier.rightSideRedElephant.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideElephant.imageName
        ) { [weak self] rightRedSideElephant in
            guard let self = self else { return }
            self.setupUnit(with: rightRedSideElephant)
        }
    }
}

// MARK: - 파란색 마 구성 및 구현
extension Units {
    private func configureLeftGreenHorse() {
        self.configureUnit(
            unitPosition: CGPoint(x: 2, y: 9),
            unitId: UnitIdentifier.leftSideGreenHorse.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideHorse.imageName
        ) { [weak self] leftGreenSideHorse in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideHorse)
        }
    }
    
    private func configureRightGreenHorse() {
        self.configureUnit(
            unitPosition: CGPoint(x: 6, y: 9),
            unitId: UnitIdentifier.rightSideGreenHorse.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideHorse.imageName
        ) { [weak self] rightGreenSideHorse in
            guard let self = self else { return }
            self.setupUnit(with: rightGreenSideHorse)
        }
    }
}

// MARK: - 빨간색 마 구성 및 구현
extension Units {
    private func configureLeftRedHorse() {
        self.configureUnit(
            unitPosition: CGPoint(x: 2, y: 0),
            unitId: UnitIdentifier.leftSideRedHorse.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideHorse.imageName
        ) { [weak self] leftRedSideHorse in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideHorse)
        }
    }
    
    private func configureRightRedHorse() {
        self.configureUnit(
            unitPosition: CGPoint(x: 6, y: 0),
            unitId: UnitIdentifier.rightSideRedHorse.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideHorse.imageName
        ) { [weak self] rightRedSideHorse in
            guard let self = self else { return }
            self.setupUnit(with: rightRedSideHorse)
        }
    }
}

// MARK: - 파란색 사 구성 및 구현
extension Units {
    private func configureLeftGreenStaff() {
        self.configureUnit(
            unitPosition: CGPoint(x: 3, y: 9),
            unitId: UnitIdentifier.leftSideGreenStaff.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideStaff.imageName
        ) { [weak self] leftGreenSideStaff in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideStaff)
        }
    }
    
    private func configureRightGreenStaff() {
        self.configureUnit(
            unitPosition: CGPoint(x: 5, y: 9),
            unitId: UnitIdentifier.rightSideGreenStaff.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideStaff.imageName
        ) { [weak self] rightGreenSideStaff in
            guard let self = self else { return }
            self.setupUnit(with: rightGreenSideStaff)
        }
    }
}

// MARK: - 빨간색 사 구성 및 구현
extension Units {
    private func configureLeftRedStaff() {
        self.configureUnit(
            unitPosition: CGPoint(x: 3, y: 0),
            unitId: UnitIdentifier.leftSideRedStaff.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideStaff.imageName
        ) { [weak self] leftRedSideStaff in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideStaff)
        }
    }
    
    private func configureRightRedStaff() {
        self.configureUnit(
            unitPosition: CGPoint(x: 5, y: 0),
            unitId: UnitIdentifier.rightSideRedStaff.id,
            tag: 2,
            unitImageName: UnitImageAssets.redSideStaff.imageName
        ) { [weak self] leftRedSideStaff in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideStaff)
        }
    }
}

// MARK: - 파란색 왕 구성 및 구현
extension Units {
    private func configureGreenKing() {
        self.configureUnit(
            unitPosition: CGPoint(x: 4, y: 8),
            unitId: UnitIdentifier.greenKing.id,
            tag: 1,
            unitImageName: UnitImageAssets.greenKing.imageName
        ) { [weak self] greenKing in
            guard let self = self else { return }
            self.setupUnit(with: greenKing)
        }
    }
}

// MARK: - 빨간색 왕 구성 및 구현
extension Units {
    private func configureRedKing() {
        self.configureUnit(
            unitPosition: CGPoint(x: 4, y: 1),
            unitId: UnitIdentifier.redKing.id,
            tag: 2,
            unitImageName: UnitImageAssets.redKing.imageName
        ) { [weak self] redKing in
            guard let self = self else { return }
            self.setupUnit(with: redKing)
        }
    }
}
