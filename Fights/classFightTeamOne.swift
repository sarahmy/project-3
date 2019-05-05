//
//  classFightTeamOne.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class FightTeamOne: FirstTeam {
    // The team one start to attack
    // this method let the first team lead an attack
    static func attackerTeamOne() {
        print("\(PlayerOne.namePlayerOne), it is your turn to play. Please pick a character from your team, please press 1 to pick \(FirstTeam.firstTeam[0]), 2 to pick \(FirstTeam.firstTeam[1]) or 3 for \(FirstTeam.firstTeam[2]).")
        if let attacker = readLine() {
            switch attacker {
            case "1":
                if FirstTeam.firstTeam[0].startingPoints > 0 {
                    if FirstTeam.firstTeam[0].weapons == "Healing" {
                        Fights.battle.insert(FirstTeam.firstTeam[0].damagesCausedByTheirAttacks, at: 0)
                        FirstTeam.firstTeam[0].switchWeapons()
                        healFirstTeam()
                    }
                    else {
                        print("\(CharacterNameUnique.names[0]) is going to lead the attack with his \(FirstTeam.firstTeam[0].weapons).")
                        Fights.battle.insert(FirstTeam.firstTeam[0].damagesCausedByTheirAttacks, at: 0)
                        FirstTeam.firstTeam[0].switchWeapons()
                        defiedOneTeamOne()
                    } }
                else {
                    print("\(CharacterNameUnique.names[0]) is dead... He can't play.")
                    attackerTeamOne()
                }
            case "2":
                if FirstTeam.firstTeam[1].startingPoints > 0 {
                    if FirstTeam.firstTeam[1].weapons == "Healing" {
                        Fights.battle.insert(FirstTeam.firstTeam[1].damagesCausedByTheirAttacks, at: 0)
                        FirstTeam.firstTeam[1].switchWeapons()
                        healFirstTeam()
                    }
                    print("\(CharacterNameUnique.names[1]) is going to lead the attack with his \(FirstTeam.firstTeam[1].weapons).")
                    Fights.battle.insert(FirstTeam.firstTeam[1].damagesCausedByTheirAttacks, at: 0)
                    FirstTeam.firstTeam[1].switchWeapons()
                    defiedOneTeamOne()
                }
                else {
                    print("\(CharacterNameUnique.names[1]) is dead... He can't play.")
                    attackerTeamOne()
                }
            case "3":
                if FirstTeam.firstTeam[2].startingPoints > 0 {
                    if FirstTeam.firstTeam[2].weapons == "Healing"{
                        Fights.battle.insert(FirstTeam.firstTeam[2].damagesCausedByTheirAttacks, at: 0)
                        FirstTeam.firstTeam[2].switchWeapons()
                        healFirstTeam()
                    }
                    print("\(CharacterNameUnique.names[2]) is going to lead the attack with his \(FirstTeam.firstTeam[2].weapons).")
                    Fights.battle.insert(FirstTeam.firstTeam[2].damagesCausedByTheirAttacks, at: 0)
                    FirstTeam.firstTeam[2].switchWeapons()
                    defiedOneTeamOne()
                }
                else {
                    print("\(CharacterNameUnique.names[2]) is dead... He can't play.")
                    attackerTeamOne()
                }
            default :
                print("This answer was not a part of the propositions.")
                attackerTeamOne()
            }
        }}
    // this function is called in attackerTeamOne function to choose who the team 1 wants to defy in the team 2
    static func defiedOneTeamOne() {
        print("Now choose who you want to defy in your opponent team, please press 1, 2 or 3.")
        if let defiedOne = readLine(){
            switch defiedOne {
            case "1": //
                if SecondTeam.secondTeam[0].startingPoints > 0 {
                    print("You are defying \(CharacterNameUnique.names[3]).")
                    Fights.opponent.insert(SecondTeam.secondTeam[0].startingPoints, at: 0)
                    Fights.fight()
                    SecondTeam.secondTeam[0].startingPoints = Fights.opponent[0]
                    print("It remains only \(SecondTeam.secondTeam[0].startingPoints) points to \(SecondTeam.secondTeam[0]) named \(CharacterNameUnique.names[3]).")
                }
                else {
                    print("You have already floored this one.")
                    defiedOneTeamOne()
                }
            case "2":
                if SecondTeam.secondTeam[1].startingPoints > 0 {
                    print("You are defying \(CharacterNameUnique.names[4]).")
                    Fights.opponent.insert(SecondTeam.secondTeam[1].startingPoints, at: 0)
                    Fights.fight()
                    SecondTeam.secondTeam[1].startingPoints = Fights.opponent[0]
                    print("It remains only \(SecondTeam.secondTeam[1].startingPoints) points to \(SecondTeam.secondTeam[1]) named \(CharacterNameUnique.names[4]).")
                }
                else {
                    print("You have already floored this one.")
                    defiedOneTeamOne()
                }
            case "3":
                if SecondTeam.secondTeam[2].startingPoints > 0 {
                    print("You are defying \(CharacterNameUnique.names[5]).")
                    Fights.opponent.insert(SecondTeam.secondTeam[2].startingPoints, at: 0)
                    Fights.fight()
                    SecondTeam.secondTeam[2].startingPoints = Fights.opponent[0]
                    print("It remains only \(SecondTeam.secondTeam[2].startingPoints) points to \(SecondTeam.secondTeam[2]) named \(CharacterNameUnique.names[5]).")
                }
                else {
                    print("You have already floored this one.")
                    defiedOneTeamOne()
                }
            default :
                print("This answer was not a part of the propositions.")
                defiedOneTeamOne()
                
            }}
    }
    // this method is called when the attacker choosen in team one is a magus
    static func healFirstTeam() {
        print("He is a magus 🧙‍♂️. He is power is to heal himself or his still-alive team mates")
        print("You can choose who you want to heal among your team, you included by typing 1, 2 or 3.")
        if let healedOne = readLine(){
            switch healedOne {
            case "1": //
                if FirstTeam.firstTeam[0].startingPoints > 0 {
                    print("You are curing \(CharacterNameUnique.names[0]).")
                    Fights.healed.insert(FirstTeam.firstTeam[0].startingPoints, at: 0)
                    Fights.heal()
                    FirstTeam.firstTeam[0].startingPoints = Fights.healed[0]
                    print("His lifepoints are now at \(FirstTeam.firstTeam[0].startingPoints) points.")
                }
                else {
                    print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                    healFirstTeam()
                }
            case "2":
                if FirstTeam.firstTeam[1].startingPoints > 0 {
                    print("You are curing \(CharacterNameUnique.names[1]).")
                    Fights.healed.insert(FirstTeam.firstTeam[1].startingPoints, at: 0)
                    Fights.heal()
                    FirstTeam.firstTeam[1].startingPoints = Fights.healed[0]
                    print("His lifepoints are now at \(FirstTeam.firstTeam[1].startingPoints) points.")
                }
                else {
                    print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                    healFirstTeam()
                }
            case "3":
                if FirstTeam.firstTeam[2].startingPoints > 0 {
                    print("You are curing \(CharacterNameUnique.names[2]).")
                    Fights.healed.insert(FirstTeam.firstTeam[0].startingPoints, at: 0)
                    Fights.heal()
                    FirstTeam.firstTeam[2].startingPoints = Fights.healed[0]
                    print("His lifepoints are now at \(FirstTeam.firstTeam[2].startingPoints) points.")
                }
                else {
                    print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                    healFirstTeam()
                }
            default :
                print("This answer was not a part of the propositions.")
                healFirstTeam()
                
            }}
    }
    
}
