//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func game(Playertmp:Player) -> Int {
    let j1 = Playertmp
    let b1 = Bot()
    var tour:Int = 0
    var victoire:Int = 0;
    print(j1)
    print("\(j1._pseudo), score : \(j1.score)")
    repeat {
        tour += 1
        print("tour :\(tour)")
        print("Appuyer entrez pour lancer les Dé")
        _ = Utilisateur.saisirTexte()
        j1.attackPlayer(Player: j1, Bot: b1)
        b1.attackBot(Bot: b1, Player: j1)
        print("j1 vie:")
        print(j1.sante)
        print("b1 vie:")
        print(b1.sante)
    } while b1.sante >= 1 && j1.sante >= 1
    
    if (j1.sante >= 1) {
        j1.victoirePlayer()
        victoire = 1
    }
    
    print("Fin du tour: \(tour)")
    print("il reste 0 PV a \(b1._nom)")
    return victoire
}
func fonctionPrincipale() {
    var a:Int
    let Playertmp = Player()
    repeat { a = game(Playertmp:Playertmp) } while (a == 1)
}
fonctionPrincipale()
