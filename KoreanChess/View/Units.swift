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
        configureLeftGreenSideVehicle()
        configureRightGreenSideVehicle()
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
                    unitName: UnitIdentifier.greenSideSolider.name+"\(soldierID)",
                    tag: 1,
                    unitImageName: UnitImageAssets.greenSideSolider.image
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
                    unitName: UnitIdentifier.redSideSolider.name+"\(soldierID)",
                    tag: 2,
                    unitImageName: UnitImageAssets.redSideSolider.image
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
            unitName: UnitIdentifier.leftSideGreenCannon.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCannon.image
        ) { [weak self] leftSideGreenCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: leftSideGreenCannonUnit)
        }
    }
    
    private func configureRightGreenSideCannonUnit() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 7),
            unitName: UnitIdentifier.rightSideGreenCannon.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCannon.image
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
            unitName: UnitIdentifier.leftSideRedCannon.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCannon.image
        ) { [weak self] leftRedSideCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideCannonUnit)
        }
    }
    
    private func configureRightRedSideCannonUnit() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 2),
            unitName: UnitIdentifier.rightSideRedCannon.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCannon.image
        ) { [weak self] rightRedSideCannonUnit in
            guard let self = self else { return }
            self.setupUnit(with: rightRedSideCannonUnit)
        }
    }
}

// MARK: - 파란색 차 구성 및 구현
extension Units {
    private func configureLeftGreenSideVehicle() {
        self.configureUnit(
            unitPosition: CGPoint(x: 0, y: 9),
            unitName: UnitIdentifier.leftSideGreenVehicle.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCha.image
        ) { [weak self] leftGreenSideCha in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideCha)
        }
    }
    
    private func configureRightGreenSideVehicle() {
        self.configureUnit(
            unitPosition: CGPoint(x: 8, y: 9),
            unitName: UnitIdentifier.rightSideGreenVehicle.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideCha.image
        ) { [weak self] rightGreenSideCha in
            guard let self = self else { return }
            self.setupUnit(with: rightGreenSideCha)
        }
    }
}

// MARK: - 빨간색 차 구성 및 구현
extension Units {
    private func configureLeftRedSideVehicle() {
        self.configureUnit(
            unitPosition: CGPoint(x: 0, y: 0),
            unitName: UnitIdentifier.leftSideRedVehicle.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCha.image
        ) { [weak self] leftRedSideCha in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideCha)
        }
    }
    
    private func configureRightRedSideVehicle() {
        self.configureUnit(
            unitPosition: CGPoint(x: 8, y: 0),
            unitName: UnitIdentifier.rightSideRedVehicel.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideCha.image
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
            unitName: UnitIdentifier.leftSideGreenElephant.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideElephant.image
        ) { [weak self] leftGreenSideElephant in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideElephant)
        }
    }
    
    private func configureRightGreenElephant() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 9),
            unitName: UnitIdentifier.rightSideGreenElephant.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideElephant.image
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
            unitName: UnitIdentifier.leftSideRedElephant.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideElephant.image
        ) { [weak self] leftRedSideElephant in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideElephant)
        }
    }
    
    private func configureRightRedElephant() {
        self.configureUnit(
            unitPosition: CGPoint(x: 7, y: 0),
            unitName: UnitIdentifier.rightSideRedElephant.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideElephant.image
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
            unitName: UnitIdentifier.leftSideGreenHorse.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideHorse.image
        ) { [weak self] leftGreenSideHorse in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideHorse)
        }
    }
    
    private func configureRightGreenHorse() {
        self.configureUnit(
            unitPosition: CGPoint(x: 6, y: 9),
            unitName: UnitIdentifier.rightSideGreenHorse.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideHorse.image
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
            unitName: UnitIdentifier.leftSideRedHorse.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideHorse.image
        ) { [weak self] leftRedSideHorse in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideHorse)
        }
    }
    
    private func configureRightRedHorse() {
        self.configureUnit(
            unitPosition: CGPoint(x: 6, y: 0),
            unitName: UnitIdentifier.rightSideRedHorse.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideHorse.image
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
            unitName: UnitIdentifier.leftSideGreenStaff.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideStaff.image
        ) { [weak self] leftGreenSideStaff in
            guard let self = self else { return }
            self.setupUnit(with: leftGreenSideStaff)
        }
    }
    
    private func configureRightGreenStaff() {
        self.configureUnit(
            unitPosition: CGPoint(x: 5, y: 9),
            unitName: UnitIdentifier.rightSideGreenStaff.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenSideStaff.image
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
            unitName: UnitIdentifier.leftSideRedStaff.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideStaff.image
        ) { [weak self] leftRedSideStaff in
            guard let self = self else { return }
            self.setupUnit(with: leftRedSideStaff)
        }
    }
    
    private func configureRightRedStaff() {
        self.configureUnit(
            unitPosition: CGPoint(x: 5, y: 0),
            unitName: UnitIdentifier.rightSideRedStaff.name,
            tag: 2,
            unitImageName: UnitImageAssets.redSideStaff.image
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
            unitName: UnitIdentifier.greenKing.name,
            tag: 1,
            unitImageName: UnitImageAssets.greenKing.image
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
            unitName: UnitIdentifier.redKing.name,
            tag: 2,
            unitImageName: UnitImageAssets.redKing.image
        ) { [weak self] redKing in
            guard let self = self else { return }
            self.setupUnit(with: redKing)
        }
    }
}
