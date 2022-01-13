//
//  Weapon.swift
//  App_Console
//
//  Created by William Risal on 13/01/2022.
//  Copyright © 2022 mbritto. All rights reserved.
//

import Foundation

class Weapon {
    let name:String
    let puissance:Int
    let precision:Int
    
    init(name:String,puissance:Int,precision:Int) {
        self.puissance = puissance
        self.name = name
        self.precision = precision
    }
}
