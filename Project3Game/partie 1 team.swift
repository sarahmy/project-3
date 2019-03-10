//
//  partie 2.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 10/03/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

// Introducing to the players the characters
func introductCharacters() {
    print("Here some precisions about the different charachters to help you made an illuminated choice: \nthe fighter💪 starts with 100 life points and have a sword that can remove 10 points of his opponent life points; \nthe magus🧙‍♂️ gift is healing his team mate by increasing their life points by 30, he is also quite resistant with his 250 life points; \nthe colossus🏋 and his 300 life points is a tough and resistant character but doesn't do lot of damages with his fists, only 2 points; \nfinally, the dwarf🧝‍♂️ cause a lof of damages with his axe, 50 points less but is quite fragile with only 70 life points.")
}



func checkNamesUniques() {
    if names.contains(nameToCheck[0]) {
        print("Pick another one, the one you choose has been already been taken.")
        return(nameYourCharacter())
    }
    else {
        print("Nice name!")
        names.append("\(String(describing: nameToCheck[0]))")
        
    }
}


// function to choose an unique name
func nameYourCharacter() {
    print("Please, pick a name for your character that is not already taken.")
    let nameIt = readLine()
    nameToCheck.insert("\(String(describing: nameIt))", at:0)
    return(checkNamesUniques())
}


// Function to compose your team
func composeYourTeamFirstPlayer() {    print("To compose your team 💚💚💚, you have, first of all, to choose three characters among the four types of characters: a fighter, a magus, a dwarf and a colossus.")
    //Informations on the sorts of characters
    /*introductCharacters()*/
    while firstTeam.count < 3 {
        print("You made your choice? Well, to confirm your choice on the game, all you have to do is type: 1 to choose a figher, 2 for a magus, 3 for a dwarf or 4 to choose a colossus.")
        if let choice = readLine() {
            switch choice {
            case "1": //the player choose a fighter type of character
                print("You have picked a fighter.")
                nameYourCharacter()
                let fighter = Fighter(nameFighter: "\(nameToCheck[0])")
                firstTeam.append(fighter)
            case "2": //the player choose a fighter type of character
                print("You have picked a magus.")
                nameYourCharacter()
                let magus = Magus(nameMagus: "\(nameToCheck[0])")
                firstTeam.append(magus)
            case "3": //the player choose a fighter type of character
                print("You have picked a dwarf.")
                nameYourCharacter()
                let dwarf = Dwarf(nameDwarf: "\(nameToCheck[0])")
                firstTeam.append(dwarf)
            case "4": //the player choose a fighter type of character
                print("You have picked a colossus")
                nameYourCharacter()
                let colossus = Colossus(nameColossus: "\(nameToCheck[0])")
                firstTeam.append(colossus)
            default :
                print("This answer was not a part of the propositions.")
            }
        }
    }
}


func composeYourTeamSecondPlayer() {
    print("To compose your team 💜💜💜, you have, first of all, to choose three characters among the four types of characters: a fighter, a magus, a dwarf and a colossus.")
    
    //Informations on the sorts of characters
    print("Do you need some precisions about the specificites of the different characters? If you do press 1.")
    if let precisions = readLine() {
        switch precisions {
        case "1": // give more precisions
            introductCharacters()
        default : // there is nothing to do
            print("Ok then.")
        }
    }
    while secondTeam.count < 3 {
        print("You made your choice? Well, to confirm your choice on the game, all you have to do is type: 1 to choose a figher, 2 for a magus, 3 for a dwarf or 4 to choose a colossus.")
        if let choice = readLine() {
            switch choice {
            case "1": //the player choose a fighter type of character
                print("You have picked a fighter.")
                nameYourCharacter()
                let fighter = Fighter(nameFighter: "\(nameToCheck[0])")
                secondTeam.append(fighter)
            case "2": //the player choose a fighter type of character
                print("You have picked a magus.")
                nameYourCharacter()
                let magus = Magus(nameMagus: "\(nameToCheck[0])")
                secondTeam.append(magus)
            case "3": //the player choose a fighter type of character
                print("You have picked a dwarf.")
                nameYourCharacter()
                let dwarf = Dwarf(nameDwarf: "\(nameToCheck[0])")
                secondTeam.append(dwarf)
            case "4": //the player choose a fighter type of character
                print("You have picked a colossus")
                nameYourCharacter()
                let colossus = Colossus(nameColossus: "\(nameToCheck[0])")
                secondTeam.append(colossus)
            default :
                print("This answer was not a part of the propositions.")
            }
        }
    } }
