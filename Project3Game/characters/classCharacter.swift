//
//  File.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 10/03/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation
// creation of characters
class Character {
    var weapons: String
    var startingPoints: Int
    var damagesCausedByTheirAttacks: Int
    // Treasure locker for attacker, it randomly changes or not the attacker weapon and of course the damages caused.
    func switchWeapons() {
        print("A locker has just appeared in front of you. It contains weapons. The weapon you'll find will come in replacement of  the one you already have for this tour. The trick is that you cannot know in advance what is in this locker, if the weapon you'll find will be better than you have.")
        let surprise: Int = Int.random(in: 1..<100)
        if surprise > 50 {
            if surprise < 25 {
                print("For this tour you inherit of a dagger, it removes 35 points from your opponent life by attacks.")
                Fights.battle.insert(35, at: 0)
            }
            else if surprise > 45 {
                print("For this tour you inherit of a bow, it removes 30 points from your opponent life by attacks.")
                Fights.battle.insert(30, at: 0)
            }
            else if surprise == 30 || surprise == 40 {
                print("For this tour you inherit of a trident, it removes 75 points from your opponent life by attacks.")
                Fights.battle.insert(75, at: 0)
            }
            else if surprise == 35 {
                print("For this tour you inherit of a magic potion, it removes 25 points from your opponent life by attacks.")
                Fights.battle.insert(25, at: 0)
            }
            else {
                print("For this tour you inherit of a... water gun, it removes 5 points from your opponent life by attacks. Sorry...")
                Fights.battle.insert(5, at: 0)
            }
        }
        else {
            print("You keep your actual weapon. Nothing change for you... this time.")
        }
        
    }
    init(weapons: String, startingPoints: Int, damagesCausedByTheirAttacks: Int) {
        self.weapons = weapons; self.startingPoints = startingPoints; self.damagesCausedByTheirAttacks = damagesCausedByTheirAttacks
    }
}

