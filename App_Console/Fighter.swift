//
//  Fighter.swift
//  App_Console
//
//  Created by William Risal on 13/01/2022.
//  Copyright © 2022 mbritto. All rights reserved.
//

import Foundation

class Figter {
    private var _score:Int = 0;
    private var _force:Int = 1
    private var _sante:Int = 100;
    var sante:Int {
        get {_sante}
        set {_sante = newValue}
    }
    var score:Int {
        get {_score}
        set {_score = newValue}
    }
    var force:Int {
        get {_force}
        set {_force = newValue}
    }
}
