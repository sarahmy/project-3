//
//  classCharacterName.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class CharacterNameUnique {
    static var names: [String] = []
    static var nameToCheck: [String] = []
    let nameIt: String = ""
    //function to verify that the name is unique
    static func checkNamesUniques() {
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
    static func nameYourCharacter() {
        print("Please, pick a name for your character that is not already taken.")
        let nameIt = readLine()
        nameToCheck.insert("\(String(describing: nameIt))", at:0)
        return(checkNamesUniques())
    }
}
