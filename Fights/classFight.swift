//
//  classFight.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class Fights {
    // arrays of life points and damages points and healing points of the character that are playing 
    static var battle : [Int] = []
    static var opponent : [Int] = []
    static var healed : [Int] = []
    // calcul of damages caused by the attack
    static func fight() {
        opponent[0] -= battle[0]
        killed()
    }
    // function of what happen when a magus decide to heal someone
    static func heal() {
        healed[0] += Fights.battle[0]
    }
    // gamelaunch
    static func gameOn() {
        //bonus counts tours
        var loops = 0
        while FirstTeam.firstTeamTotalPoints > 0 && SecondTeam.secondTeamTotalPoints > 0 {
            loops += 1
            FightTeamOne.attackerTeamOne()
            if FirstTeam.firstTeamTotalPoints > 0 && SecondTeam.secondTeamTotalPoints > 0 {
                FightTeamTwo.attackerTeamTwo()
            }
        }
        print("game over")
        if FirstTeam.firstTeamTotalPoints > 0 {
            print("🎈🎉🎉🎈🎉🎉🎈 \(PlayerOne.namePlayerOne)💚💚💚, you won this game in \(loops) rounds🎈🎉🎉🎈🎉🎉🎈!")
        }
        else {
            print("🎈🎉🎉🎈🎉🎉🎈 \(PlayerTwo.namePlayerTwo)💜💜💜, you won this game in \(loops) rounds🎈🎉🎉🎈🎉🎉🎈!")
        }
        
    }
    //function that bring to zero the character's life point supposed to be negative
    static func killed() {
        if opponent[0] < 0 {
            opponent[0] = 0
            print("Great job team two! You killed him! Now, he is dead.")
        }
    }
    
    
}

