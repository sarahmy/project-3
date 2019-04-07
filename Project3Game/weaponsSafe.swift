//
//  Partie 3 .swift
//  Project3Game
//
//  Created by Sarah Maimoun on 10/03/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

//treasure locker for magus, it randomly changes or not the amount of healing power of the magus
func magusChangeOfPower() {
    print("A locker has just appeared in front of you. It contains different healing powers for your magus. The one you'll find is the locker will come in replacement of the one you already have for this tour. The trick is that you cannot know in advance what is in this locker, if the healing power you'll find will be better than you have.")
    print("                     🎁🎁🎁                          ")
    let surpriseHeal: Int = Int.random(in: 1..<100)
    if surpriseHeal > 50 {
        if surpriseHeal < 25 {
            print("For this tour you inherit of a new potion a little improved for this tour, it adds 40 life points to the character you choosed.")
            battle.insert(40, at: 0)
        }
        else if surpriseHeal > 45 {
            print("For this tour you inherit of a new potion a little less good than the one you used to have, it adds 25 life points to the character you choosed.")
            battle.insert(25, at: 0)
        }
        else if surpriseHeal == 30 || surpriseHeal == 40 {
            print("For this tour you inherit of a super life potion, it adds 65 life points to the character you choosed.")
            battle.insert(65, at: 0)
        }
        else if surpriseHeal == 35 {
            print("For this tour you inherit of a potion that you didn't succeeded to make, it only adds 5 life points to the character you choosed.")
            battle.insert(5, at: 0)
        }
        else {
            print("For this tour you inherit of a better life potion, it adds 35 life points to the character you choosed.")
            battle.insert(35, at: 0)
        }
    }
    else {
        print("You keep your actual power. Nothing change for you... this time.")
    }
    
}
// Treasure locker for attacker, it randomly changes or not the attacker weapon and of course the damages caused.
func switchWeapons() {
    print("A locker has just appeared in front of you. It contains weapons. The weapon you'll find will come in replacement of  the one you already have for this tour. The trick is that you cannot know in advance what is in this locker, if the weapon you'll find will be better than you have.")
    print("                        🎁🎁🎁                       ")
    let surprise: Int = Int.random(in: 1..<100)
    if surprise > 50 {
        if surprise < 25 {
            print("For this tour you inherit of a dagger, it removes 35 points from your opponent life by attacks.")
            battle.insert(35, at: 0)
        }
        else if surprise > 45 {
            print("For this tour you inherit of a bow, it removes 30 points from your opponent life by attacks.")
            battle.insert(30, at: 0)
        }
        else if surprise == 30 || surprise == 40 {
            print("For this tour you inherit of a trident, it removes 75 points from your opponent life by attacks.")
            battle.insert(75, at: 0)
        }
        else if surprise == 35 {
            print("For this tour you inherit of a magic potion, it removes 25 points from your opponent life by attacks.")
            battle.insert(25, at: 0)
        }
        else {
            print("For this tour you inherit of a... water gun, it removes 5 points from your opponent life by attacks. Sorry...")
            battle.insert(5, at: 0)
        }
    }
    else {
        print("You keep your actual weapon. Nothing change for you... this time.")
    }
    
}
