//
//  classMagus.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

//Magus class
class Magus: Character {
    static let typeOfCharacter = "Magus"
    var nameMagus: String
    //treasure locker for magus, it randomly changes or not the amount of healing power of the magus
    override func switchWeapons() {
        print("A locker has just appeared in front of you. It contains different healing powers for your magus. The one you'll find is the locker will come in replacement of the one you already have for this tour. The trick is that you cannot know in advance what is in this locker, if the healing power you'll find will be better than you have.")
        print("                     🎁🎁🎁                          ")
        let surpriseHeal: Int = Int.random(in: 1..<100)
        if surpriseHeal > 50 {
            if surpriseHeal < 25 {
                print("For this tour you inherit of a new potion a little improved for this tour, it adds 40 life points to the character you choosed.")
                Fights.battle.insert(40, at: 0)
            }
            else if surpriseHeal > 45 {
                print("For this tour you inherit of a new potion a little less good than the one you used to have, it adds 25 life points to the character you choosed.")
                Fights.battle.insert(25, at: 0)
            }
            else if surpriseHeal == 30 || surpriseHeal == 40 {
                print("For this tour you inherit of a super life potion, it adds 65 life points to the character you choosed.")
                Fights.battle.insert(65, at: 0)
            }
            else if surpriseHeal == 35 {
                print("For this tour you inherit of a potion that you didn't succeeded to make, it only adds 5 life points to the character you choosed.")
                Fights.battle.insert(5, at: 0)
            }
            else {
                print("For this tour you inherit of a better life potion, it adds 35 life points to the character you choosed.")
                Fights.battle.insert(35, at: 0)
            }
        }
        else {
            print("You keep your actual power. Nothing change for you... this time.")
        }
        
    }
    init(nameMagus: String) {
        self.nameMagus = nameMagus
        super.init(weapons: "Healing", startingPoints: 250, damagesCausedByTheirAttacks: 30)
    }
}
