//
//  partie 3.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 10/03/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

func reminderTeams() {
    print("Who from your team will be send to fight? Just to remind you: \nIn First Team we have \n1)\(firstTeam[0]) : \(names[1]), \n2)\(firstTeam[1]) : \(names[2]), \n3)\(firstTeam[2]) : \(names[3]); \nIn Second Team we have: \n1)\(secondTeam[0]) : \(names[4]), \n2)\(secondTeam[1]) : \(names[5]), \n3)\(secondTeam[2]) : \(names[6]).")
}

// function of what happen when a magus decide to heal someone
func heal() {
    healed[0] += battle[0]
}

//When attacker from team One is a magus so this function let him choose someone among his team (him included) he wants to heal.
func healFirstTeam() {
    print("He is a magus 🧙‍♂️. He is power is to heal himself or his still-alive team mates")
    print("You can choose who you want to heal among your team, you included by typing 1, 2 or 3.")
    if let healedOne = readLine(){
        switch healedOne {
        case "1": //
            if firstTeam[0].startingPoints > 0 {
                print("You are curing \(names[1]).")
                healed.insert(firstTeam[0].startingPoints, at: 0)
                heal()
                firstTeam[0].startingPoints = healed[0]
                print("His lifepoints are now at \(firstTeam[0].startingPoints) points.")
            }
            else {
                print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                healFirstTeam()
            }
        case "2":
            if firstTeam[1].startingPoints > 0 {
                print("You are curing \(names[2]).")
                healed.insert(firstTeam[1].startingPoints, at: 0)
                heal()
                firstTeam[1].startingPoints = healed[0]
                print("His lifepoints are now at \(firstTeam[1].startingPoints) points.")
            }
            else {
                print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                healFirstTeam()
            }
        case "3":
            if firstTeam[2].startingPoints > 0 {
                print("You are curing \(names[3]).")
                healed.insert(firstTeam[0].startingPoints, at: 0)
                heal()
                firstTeam[2].startingPoints = healed[0]
                print("His lifepoints are now at \(firstTeam[2].startingPoints) points.")
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

//The team one start to attack
func attackerTeamOne() {
    print("\(player1.name) 💚💚💚, it is your turn to play. Please pick a character from your team, please press 1 to pick \(firstTeam[0]), 2 to pick \(firstTeam[1]) or 3 for \(firstTeam[2]).")
    if let attacker = readLine() {
        switch attacker {
        case "1":
            if firstTeam[0].startingPoints > 0 {
                if firstTeam[0].weapons == "Healing" {
                    battle.insert(firstTeam[0].damagesCausedByTheirAttacks, at: 0)
                    magusChangeOfPower()
                    healFirstTeam()
                }
                else {
                    print("\(names[1]) is going to lead the attack with his \(firstTeam[0].weapons).")
                    battle.insert(firstTeam[0].damagesCausedByTheirAttacks, at: 0)
                    switchWeapons()
                    defiedOneTeamOne()
                } }
            else {
                print("\(names[1]) is dead... He can't play.")
                attackerTeamOne()
            }
        case "2":
            if firstTeam[1].startingPoints > 0 {
                if firstTeam[1].weapons == "Healing" {
                    battle.insert(firstTeam[1].damagesCausedByTheirAttacks, at: 0)
                    magusChangeOfPower()
                    healFirstTeam()
                }
                print("\(names[2]) is going to lead the attack with his \(firstTeam[1].weapons).")
                battle.insert(firstTeam[1].damagesCausedByTheirAttacks, at: 0)
                switchWeapons()
                defiedOneTeamOne()
            }
            else {
                print("\(names[2]) is dead... He can't play.")
                attackerTeamOne()
            }
        case "3":
            if firstTeam[2].startingPoints > 0 {
                if firstTeam[2].weapons == "Healing"{
                    battle.insert(firstTeam[2].damagesCausedByTheirAttacks, at: 0)
                    magusChangeOfPower()
                    healFirstTeam()
                }
                print("\(names[3]) is going to lead the attack with his \(firstTeam[2].weapons).")
                battle.insert(firstTeam[2].damagesCausedByTheirAttacks, at: 0)
                switchWeapons()
                defiedOneTeamOne()
            }
            else {
                print("\(names[3]) is dead... He can't play.")
                attackerTeamOne()
            }
        default :
            print("This answer was not a part of the propositions.")
            attackerTeamOne()
        }
    }}
func killed() {
    if opponent[0] < 0 {
        opponent[0] = 0
        print("Great job team two! You killed him! Now, he is dead.")
    }
}

// When attacker from team Two is a magus so this function let him choose someone among his team (him included) he wants to heal.
func healSecondTeam() {
    print("He is a magus 🧙‍♂️. He is power is to heal himself or his still-alive team mates")
    print("You can choose who you want to heal among your team, you included by typing 1, 2 or 3.")
    if let healedOne = readLine(){
        switch healedOne {
        case "1": //
            if secondTeam[0].startingPoints > 0 {
                print("You are curing \(names[4]).")
                healed.insert(secondTeam[0].startingPoints, at: 0)
                heal()
                secondTeam[0].startingPoints = healed[0]
                print("His lifepoints are now at \(secondTeam[0].startingPoints) points.")
            }
            else {
                print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                healSecondTeam()
            }
        case "2":
            if secondTeam[1].startingPoints > 0 {
                print("You are curing \(names[5]).")
                healed.insert(secondTeam[1].startingPoints, at: 0)
                heal()
                secondTeam[1].startingPoints = healed[0]
                print("His lifepoints are now at \(secondTeam[1].startingPoints) points.")
            }
            else {
                print("Unfortunately, this one is already dead, you can't cure him anymore. You should choose another character to heal.")
                healSecondTeam()
            }
        case "3":
            if secondTeam[2].startingPoints > 0 {
                print("You are curing \(names[6]).")
                healed.insert(secondTeam[0].startingPoints, at: 0)
                heal()
                secondTeam[2].startingPoints = healed[0]
                print("His lifepoints are now at \(secondTeam[2].startingPoints) points.")
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



// this function is called in attackerTeamOne function to choose who the team 1 wants to defy in the team 2
func defiedOneTeamOne() {
    print("Now choose who you want to defy in your opponent team, please press 1, 2 or 3.")
    if let defiedOne = readLine(){
        switch defiedOne {
        case "1": //
            if secondTeam[0].startingPoints > 0 {
                print("You are defying \(names[4]).")
                opponent.insert(secondTeam[0].startingPoints, at: 0)
                fight()
                secondTeam[0].startingPoints = opponent[0]
                print("It remains only \(secondTeam[0].startingPoints) points to \(secondTeam[0]) named \(names[4]).")
            }
            else {
                print("You have already floored this one.")
                defiedOneTeamOne()
            }
        case "2":
            if secondTeam[1].startingPoints > 0 {
                print("You are defying \(names[5]).")
                opponent.insert(secondTeam[1].startingPoints, at: 0)
                fight()
                secondTeam[1].startingPoints = opponent[0]
                print("It remains only \(secondTeam[1].startingPoints) points to \(secondTeam[1]) named \(names[5]).")
            }
            else {
                print("You have already floored this one.")
                defiedOneTeamOne()
            }
        case "3":
            if secondTeam[2].startingPoints > 0 {
                print("You are defying \(names[6]).")
                opponent.insert(secondTeam[2].startingPoints, at: 0)
                fight()
                secondTeam[2].startingPoints = opponent[0]
                print("It remains only \(secondTeam[2].startingPoints) points to \(secondTeam[2]) named \(names[6]).")
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


// attacker et defied one on team two
func attackerTeamTwo() {
    print("Your turn \(player2.name) 💜💜💜, to pick a character from your team, please press 1, 2 or 3.")
    if let attacker = readLine() {
        switch attacker {
        case "1": //
            if secondTeam[0].startingPoints > 0 {
                if secondTeam[0].weapons == "Healing" {
                    battle.insert(secondTeam[0].damagesCausedByTheirAttacks, at: 0)
                    magusChangeOfPower()
                    healSecondTeam()
                }
                print("\(names[4]) is going to lead the attack with his \(secondTeam[0].weapons).")
                battle.insert(secondTeam[0].damagesCausedByTheirAttacks, at: 0)
                switchWeapons()
                defiedOneTeamTwo()
            }
            else {
                print("\(names[4]) is dead... He can't play.")
                attackerTeamTwo()
            }
        case "2":
            if secondTeam[1].startingPoints > 0 {
                if secondTeam[1].weapons == "Healing" {
                    battle.insert(secondTeam[1].damagesCausedByTheirAttacks, at: 0)
                    magusChangeOfPower()
                    healSecondTeam()
                }
                print("\(names[5]) is going to lead the attack with his \(secondTeam[1].weapons).")
                battle.insert(secondTeam[1].damagesCausedByTheirAttacks, at: 0)
                switchWeapons()
                defiedOneTeamTwo()
            }
            else {
                print("\(names[5]) is dead... He can't play.")
                attackerTeamTwo()
            }
        case "3":
            if secondTeam[2].startingPoints > 0 {
                if secondTeam[2].weapons == "Healing" {
                    battle.insert(secondTeam[2].damagesCausedByTheirAttacks, at: 0)
                    magusChangeOfPower()
                    healSecondTeam()
                }
                print("\(names[6]) is going to lead the attack with his \(secondTeam[2].weapons).")
                battle.insert(secondTeam[2].damagesCausedByTheirAttacks, at: 0)
                switchWeapons()
                defiedOneTeamTwo()
            }
            else {
                print("\(names[6]) is dead... He can't play.")
                attackerTeamTwo()
            }
        default :
            print("This answer was not a part of the propositions.")
            attackerTeamTwo()
        }
    }}

// this function is called in attackerTeamTWo function to choose who the team 2 wants to defy in the team 1
func defiedOneTeamTwo() {
    print("Now choose who you want to defy in your opponent team, please press 1, 2 or 3.")
    if let defiedOne = readLine(){
        switch defiedOne {
        case "1": //
            if firstTeam[0].startingPoints > 0 {
                print("You are defying \(names[1]).")
                opponent.insert(firstTeam[0].startingPoints, at: 0)
                fight()
                firstTeam[0].startingPoints = opponent[0]
                print("It remains only \(firstTeam[0].startingPoints) points to \(firstTeam[2]) named \(names[1]).")
            }
            else {
                print("You have already floored this one.")
                defiedOneTeamTwo()
            }
        case "2":
            if firstTeam[1].startingPoints > 0 {
                print("You are defying \(names[2]).")
                opponent.insert(firstTeam[1].startingPoints, at: 0)
                fight()
                firstTeam[1].startingPoints = opponent[0]
                print("It remains only \(firstTeam[1].startingPoints) points to \(firstTeam[2]) named \(names[2]).")
            }
            else {
                print("You have already floored this one.")
                defiedOneTeamTwo()
            }
        case "3":
            if firstTeam[2].startingPoints > 0 {
                print("You are defying \(names[3]).")
                opponent.insert(firstTeam[2].startingPoints, at: 0)
                fight()
                firstTeam[2].startingPoints = opponent[0]
                print("It remains only \(firstTeam[2].startingPoints) points to \(firstTeam[2]) named \(names[3]).")
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

// calcul of damages caused by the attack
func fight() {
    opponent[0] -= battle[0]
    killed()
}

// total points of second team
var secondTeamTotalPoints: Int {
    get {
        return secondTeam[0].startingPoints + secondTeam[1].startingPoints + secondTeam[2].startingPoints
    }
}

//total points of the first team
var firstTeamTotalPoints: Int {
    get {
        return firstTeam[0].startingPoints + firstTeam[1].startingPoints + firstTeam[2].startingPoints
    }
}

//bonus
var loops = 0

// function that start the fights between the two teams
func gameOn() {
    while firstTeamTotalPoints > 0 && secondTeamTotalPoints > 0 {
        loops += 1
        attackerTeamOne()
        if firstTeamTotalPoints > 0 && secondTeamTotalPoints > 0 {
            attackerTeamTwo()
        }
    }
    print("game over")
    if firstTeamTotalPoints > 0 {
        print("🎈🎉🎉🎈🎉🎉🎈 \(player1.name)💚💚💚, you won this game in \(loops) rounds 🎈🎉🎉🎈🎉🎉🎈!")
    }
    else {
        print("🎈🎉🎉🎈🎉🎉🎈 \(player2.name)💜💜💜, you won this game in \(loops) rounds 🎈🎉🎉🎈🎉🎉🎈!")
    }
}
