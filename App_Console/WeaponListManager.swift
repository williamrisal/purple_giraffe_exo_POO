//
//  WeaponListManager.swift
//  App_Console
//
//  Created by William Risal on 13/01/2022.
//  Copyright © 2022 mbritto. All rights reserved.
//

import Foundation

class WeaponListManager {
    var nb:Int = 0
    private var tab:[Weapon] = [
        Weapon(name: "epée", puissance: 1, precision: 100),
        Weapon(name: "bouclier" , puissance: 1, precision: 90)
    ]
    func getNextWeaponToLoot() -> Weapon? {
        self.nb += 1
        if (self.nb >= tab.count) {
            return nil
        }
        return tab[self.nb]
    }
}
