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
        configureBackgroundImage()
        configureGameFieldImage()
        
        configureGreenSideSoldierUnit()
        configureRedSideSoldierUnit()
        
        configureLeftGreenSideCannonUnit()
        configureRightGreenSideCannonUnit()
        
        configureLeftRedSideCannonUnit()
        configureRightRedSideCannonUnit()
        
        configureLeftGreenSideVehicle()
        configureRightGreenSideVehicle()
        
        configureLeftRedSideVehicle()
        configureRightRedSideVehicle()
        
        configureLeftGreenElephant()
        configureRightGreenElephant()
        
        configureLeftRedElephant()
        configureRightRedElephant()
        
        configureLeftGreenHorse()
        configureRightGreenHorse()
        
        configureLeftRedHorse()
        configureRightRedHorse()
    }
}
// MARK: - 졸
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
// MARK: - 파란색 포
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
// MARK: - 빨간색 포
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

// MARK: - 파란색 차
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

// MARK: - 빨간색 차
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

// MARK: - 파란색 상
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

// MARK: - 빨간색 상
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

// MARK: - 파란색 마
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

// MARK: - 빨간색 마
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
