//
//  classDwarf.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

//Dwarf class
class Dwarf: Character {
    var typeOfCharacter = "Dwarf"
    var nameDwarf: String
    init(nameDwarf: String) {
        self.nameDwarf = nameDwarf
        super.init(weapons: "Sword", startingPoints: 70, damagesCausedByTheirAttacks: 50)
    }
}
