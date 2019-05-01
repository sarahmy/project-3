//
//  classTeam.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class Team {
    static let numberOfCharacter = 3
    static let numberOfTeam = 2
    static let numberOfPlayer = 2
    static func introductCharacters() {
        // Introducing to the players the characters
        print("Here some precisions about the different charachters to help you made an illuminated choice: \nthe fighter💪 starts with 100 life points and have a sword that can remove 10 points of his opponent life points; \nthe magus🧙‍♂️ gift is healing his team mate by increasing their life points by 30, he is also quite resistant with his 250 life points; \nthe colossus🏋 and his 300 life points is a tough and resistant character but doesn't do lot of damages with his fists, only 2 points; \nfinally, the dwarf🧝‍♂️ cause a lof of damages with his axe, 50 points less but is quite fragile with only 70 life points.")
    }
    // function that reminds the characters choosen by each player
    static func reminderTeams() {
        print("Who from your team will be send to fight? Just to remind you: \nIn First Team we have 1)\(FirstTeam.firstTeam[0]) : \(CharacterNameUnique.names[0]), 2)\(FirstTeam.firstTeam[1]) : \(CharacterNameUnique.names[1]), 3)\(FirstTeam.firstTeam[2]) : \(CharacterNameUnique.names[2]); \nIn Second Team we have 1)\(SecondTeam.secondTeam[0]) : \(CharacterNameUnique.names[3]), 2)\(SecondTeam.secondTeam[1]) : \(CharacterNameUnique.names[4]), 3)\(SecondTeam.secondTeam[2]) : \(CharacterNameUnique.names[5]).")
    }
}
