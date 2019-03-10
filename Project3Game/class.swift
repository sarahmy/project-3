//
//  File.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 10/03/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation


// class Player with players's specificities
class Player {
    var name: String
    var team = Int()
    let numberOfCharacter = 3
    init(name: String, team: Int) {
        self.name = name; self.team = team
    }
}
// creation of characters
class Character {
    var weapons: String
    var startingPoints: Int
    var damagesCausedByTheirAttacks: Int
    init(weapons: String, startingPoints: Int, damagesCausedByTheirAttacks: Int) {
        self.weapons = weapons; self.startingPoints = startingPoints; self.damagesCausedByTheirAttacks = damagesCausedByTheirAttacks
    }
}

// Creation of the four type of characters
class Fighter: Character {
    static let typeOfCharacter = "fighter"
    var nameFighter: String
    var pointsFighter = 100
    init(nameFighter: String) {
        self.nameFighter = nameFighter
        super.init(weapons: "Sword", startingPoints: 100, damagesCausedByTheirAttacks: 50)
    }
}
class Magus: Character {
    static let typeOfCharacter = "Magus"
    var nameMagus: String
    init(nameMagus: String) {
        self.nameMagus = nameMagus
        super.init(weapons: "Healing", startingPoints: 250, damagesCausedByTheirAttacks: 30)
    }
}
class Colossus: Character {
    var typeOfCharacter = "Colossus"
    var nameColossus: String
    init(nameColossus: String) {
        self.nameColossus = nameColossus
        super.init(weapons: "Tough", startingPoints: 300, damagesCausedByTheirAttacks: 2)
    }
}
class Dwarf: Character {
    var typeOfCharacter = "Dwarf"
    var nameDwarf: String
    init(nameDwarf: String) {
        self.nameDwarf = nameDwarf
        super.init(weapons: "Sword", startingPoints: 70, damagesCausedByTheirAttacks: 50)
    }
}
