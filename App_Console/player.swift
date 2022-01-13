//
//  player.swift
//  App_Console
//
//  Created by William Risal on 12/01/2022.
//  Copyright © 2022 mbritto. All rights reserved.
//

import Foundation

class Player : Figter, CustomStringConvertible {
    var _pseudo:String = ""
    private var weapon:Weapon = Weapon(name: "Couteau",puissance: 1,precision: 100)
    var description:String { return "Name: \(self._pseudo) \nPV :\(self.sante)"}
    override init () {
        print("Entrez prenom :")
        self._pseudo = Utilisateur.saisirTexte()
    }
    func printInfoPlayer(Player:Player) {
        print("Name: \(Player._pseudo) ")
        print("PV: \(Player.sante)")
    }
    
    func attackPlayer(Player:Player, Bot:Bot) {
        print("1 - attack normal  2 - attack lourde")
        let attack:Int = Utilisateur.saisirEntier()
        var Dé = 0
        if (Int.random(in: 0...100) <= weapon.precision) {
            if (attack == 2) {
                Dé = Utilisateur.resultataleatoire() * self.force * 2 * weapon.puissance
                print("l'attaque lourd a couter 5 PV a \(Player) mais c'est degât son augmenter par 2 sur ce tour !")
            } else {
                print("Attaque normal !")
                Dé = Utilisateur.resultataleatoire() * self.force * weapon.puissance
            }
        }
        print("\(Player._pseudo) Attaque !")
        print("\(Player._pseudo) fais \(Dé) de degat")
        Bot.sante = Bot.sante - Dé
        print("\nIl reste \(Bot.sante) PV a \(Bot.score)")

    }

    func victoirePlayer() {
        print("Victore !!!!")
        self.score += 1
        self.force += 1
        print("choisissez une nouvelle arme !\n 1 - fusil 2 - sniper");
        if ( 1 == Utilisateur.saisirEntier()) {
           _ = Weapon(name: "fusil",puissance: 2,precision: 70)
        }
        else if (2 == Utilisateur.saisirEntier()) {
            _ = Weapon(name: "sniper",puissance: 1,precision: 100)
        }
    }
    
}
