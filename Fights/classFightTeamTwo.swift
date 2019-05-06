//
//  classFightTeamTwo.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class FightTeamTwo: SecondTeam {
    // The team two start to attack
    // this method let the second team lead an attack
    static func attackerTeamTwo() {
        print("\(PlayerTwo.namePlayerTwo) 💜💜💜,To pick a character from your team, please press 1, 2 or 3.")
        if let attacker = readLine() {
            switch attacker {
            case "1": //
                if SecondTeam.secondTeam[0].startingPoints > 0 {
                    if SecondTeam.secondTeam[0].weapons == "Healing" {
                        Fights.battle.insert(SecondTeam.secondTeam[0].damagesCausedByTheirAttacks, at: 0)
                        SecondTeam.secondTeam[0].switchWeapons()
                        healSecondTeam()
                    }
                    print("\(CharacterNameUnique.names[3]) is going to lead the attack with his \(SecondTeam.secondTeam[0].weapons).")
                    Fights.battle.insert(SecondTeam.secondTeam[0].damagesCausedByTheirAttacks, at: 0)
                    SecondTeam.secondTeam[0].switchWeapons()
                    defiedOneTeamTwo()
                }
                else {
                    print("\(CharacterNameUnique.names[3]) is dead... He can't play.")
                    attackerTeamTwo()
                }
            case "2":
                if SecondTeam.secondTeam[1].startingPoints > 0 {
                    if SecondTeam.secondTeam[1].weapons == "Healing" {
                        Fights.battle.insert(SecondTeam.secondTeam[1].damagesCausedByTheirAttacks, at: 0)
                        SecondTeam.secondTeam[1].switchWeapons()
                        healSecondTeam()
                    }
                    print("\(CharacterNameUnique.names[4]) is going to lead the attack with his \(SecondTeam.secondTeam[1].weapons).")
                    Fights.battle.insert(SecondTeam.secondTeam[1].damagesCausedByTheirAttacks, at: 0)
                    SecondTeam.secondTeam[1].switchWeapons()
                    defiedOneTeamTwo()
                }
                else {
                    print("\(CharacterNameUnique.names[4]) is dead... He can't play.")
                    attackerTeamTwo()
                }
            case "3":
                if SecondTeam.secondTeam[2].startingPoints > 0 {
                    if SecondTeam.secondTeam[2].weapons == "Healing" {
                        Fights.battle.insert(SecondTeam.secondTeam[2].damagesCausedByTheirAttacks, at: 0)
                        SecondTeam.secondTeam[2].switchWeapons()
                        healSecondTeam()
                    }
                    print("\(CharacterNameUnique.names[5]) is going to lead the attack with his \(SecondTeam.secondTeam[2].weapons).")
                    Fights.battle.insert(SecondTeam.secondTeam[2].damagesCausedByTheirAttacks, at: 0)
                    SecondTeam.secondTeam[2].switchWeapons()
                    defiedOneTeamTwo()
                }
                else {
                    print("\(CharacterNameUnique.names[5]) is dead... He can't play.")
                    attackerTeamTwo()
                }
            default :
                print("This answer was not a part of the propositions.")
                attackerTeamTwo()
            }
        }}
    
    // this function is called in attackerTeamTWo function to choose who the team 2 wants to defy in the team 1
    static func defiedOneTeamTwo() {
        print("Now choose who you want to defy in your opponent team, please press 1, 2 or 3.")
        if let defiedOne = readLine(){
            switch defiedOne {
            case "1": //
                if FirstTeam.firstTeam[0].startingPoints > 0 {
                    print("You are defying \(CharacterNameUnique.names[0]).")
                    Fights.opponent.insert(FirstTeam.firstTeam[0].startingPoints, at: 0)
                    Fights.fight()
                    FirstTeam.firstTeam[0].startingPoints = Fights.opponent[0]
                    print("It remains only \(FirstTeam.firstTeam[0].startingPoints) points to \(FirstTeam.firstTeam[0]) named \(CharacterNameUnique.names[0]).")
                }
                else {
                    print("You have already floored this one.")
                    defiedOneTeamTwo()
                }
            case "2":
                if FirstTeam.firstTeam[1].startingPoints > 0 {
                    print("You are defying \(CharacterNameUnique.names[1]).")
                    Fights.opponent.insert(FirstTeam.firstTeam[1].startingPoints, at: 0)
                    Fights.fight()
                    FirstTeam.firstTeam[1].startingPoints = Fights.opponent[0]
                    print("It remains only \(FirstTeam.firstTeam[1].startingPoints) points to \(FirstTeam.firstTeam[1]) named \(CharacterNameUnique.names[1]).")
                }
                else {
                    print("You have already floored this one.")
                    defiedOneTeamTwo()
                }
            case "3":
                if FirstTeam.firstTeam[2].startingPoints > 0 {
                    print("You are defying \(CharacterNameUnique.names[2]).")
                    Fights.opponent.insert(FirstTeam.firstTeam[2].startingPoints, at: 0)
                    Fights.fight()
                    FirstTeam.firstTeam[2].startingPoints = Fights.opponent[0]
                    print("It remains only \(FirstTeam.firstTeam[2].startingPoints) points to \(FirstTeam.firstTeam[2]) named \(CharacterNameUnique.names[2]).")
                }
                else {
                    print("You have already floored this one.")
                    defiedOneTeamTwo()
                }
            default :
                print("This answer was not a part of the propositions.")
                defiedOneTeamTwo()
            }}
    }
    // When attacker from team Two is a magus so this function let him choose someone among his team (him included) he wants to heal.
    static func healSecondTeam() {
        print("He is a magus 🧙‍♂️. He is power is to heal himself or his still-alive team mates")
        print("You can choose who you want to heal among your team, you included by typing 1, 2 or 3.")
        if let healedOne = readLine(){
            switch healedOne {
            case "1": //
                if SecondTeam.secondTeam[0].startingPoints > 0 {
                    print("You are curing \(CharacterNameUnique.names[3]).")
                    Fights.healed.insert(SecondTeam.secondTeam[0].startingPoints, at: 0)
                    Fights.heal()
                    SecondTeam.secondTeam[0].startingPoints = Fights.healed[0]
                    print("His lifepoints are now at \(SecondTeam.secondTeam[0].startingPoints) points.")
                }
                else {
                    print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                    healSecondTeam()
                }
            case "2":
                if SecondTeam.secondTeam[1].startingPoints > 0 {
                    print("You are curing \(CharacterNameUnique.names[4]).")
                    Fights.healed.insert(SecondTeam.secondTeam[1].startingPoints, at: 0)
                    Fights.heal()
                    SecondTeam.secondTeam[1].startingPoints = Fights.healed[0]
                    print("His lifepoints are now at \(SecondTeam.secondTeam[1].startingPoints) points.")
                }
                else {
                    print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                    healSecondTeam()
                }
            case "3":
                if SecondTeam.secondTeam[2].startingPoints > 0 {
                    print("You are curing \(CharacterNameUnique.names[5]).")
                    Fights.healed.insert(SecondTeam.secondTeam[0].startingPoints, at: 0)
                    Fights.heal()
                    SecondTeam.secondTeam[2].startingPoints = Fights.healed[0]
                    print("His lifepoints are now at \(SecondTeam.secondTeam[2].startingPoints) points.")
                }
                else {
                    print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                    healSecondTeam()
                }
            default :
                print("This answer was not a part of the propositions.")
                healSecondTeam()
                
            }}
    }
    
}
