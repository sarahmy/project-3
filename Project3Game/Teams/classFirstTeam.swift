//
//  classFirstTeam.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation
class FirstTeam: Team {
    // total points of first team
    static var firstTeamTotalPoints: Int {
        get {
            return firstTeam[0].startingPoints + firstTeam[1].startingPoints + firstTeam[2].startingPoints
        }
    }
    static var firstTeamNames: [String] = []
    static var firstTeam: [Character] = []
    // Function to compose your team
    static func composeYourTeamFirstPlayer() {    print("To compose your team💚💚💚, you have, first of all, to choose three characters among the four types of characters: a fighter, a magus, a dwarf and a colossus.")
        //Informations on the sorts of characters
        /*introductCharacters()*/
        while firstTeam.count < 3 {
            print("You made your choice? Well, to confirm your choice on the game, all you have to do is type: 1 to choose a figher, 2 for a magus, 3 for a dwarf or 4 to choose a colossus.")
            if let choice = readLine() {
                switch choice {
                case "1": //the player choose a fighter type of character
                    print("You have picked a fighter.")
                    CharacterNameUnique.nameYourCharacter()
                    let fighter = Fighter(nameFighter: "\(CharacterNameUnique.nameToCheck[0])")
                    firstTeam.append(fighter)
                case "2": //the player choose a fighter type of character
                    print("You have picked a magus.")
                    CharacterNameUnique.nameYourCharacter()
                    let magus = Magus(nameMagus: "\(CharacterNameUnique.nameToCheck[0])")
                    firstTeam.append(magus)
                case "3": //the player choose a fighter type of character
                    print("You have picked a dwarf.")
                    CharacterNameUnique.nameYourCharacter()
                    let dwarf = Dwarf(nameDwarf: "\(CharacterNameUnique.nameToCheck[0])")
                    firstTeam.append(dwarf)
                case "4": //the player choose a fighter type of character
                    print("You have picked a colossus")
                    CharacterNameUnique.nameYourCharacter()
                    let colossus = Colossus(nameColossus: "\(CharacterNameUnique.nameToCheck[0])")
                    firstTeam.append(colossus)
                default :
                    print("This answer was not a part of the propositions.")
                }
            }
        }
    }
}

