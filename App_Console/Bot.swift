//
//  bot.swift
//  App_Console
//
//  Created by Maxime Britto on 09/07/2020.
//  Copyright © 2020 mbritto. All rights reserved.
//

import Foundation

class Bot: Figter {
    var _nom:String = "Robot"

    func printInfoPlayer(Bot:Bot) {
        print("Name: \(Bot._nom) ")
        print("PV: \(Bot.sante)")
    }
    
    func attackBot(Bot:Bot, Player:Player) {
        let Dé = Utilisateur.resultataleatoire() * self.force
        print("\(Bot._nom) Attaque !")
        print("\(Bot._nom) fais \(Dé) de degat")
        Player.sante = Player.sante - Dé
        print("\nIl reste \(Player.sante) PV a \(Player._pseudo)")

    }
}

