//
//  classColossus.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

// Colossus class
class Colossus: Character {
    var typeOfCharacter = "Colossus"
    var nameColossus: String
    init(nameColossus: String) {
        self.nameColossus = nameColossus
        super.init(weapons: "Tough", startingPoints: 300, damagesCausedByTheirAttacks: 2)
    }
}
