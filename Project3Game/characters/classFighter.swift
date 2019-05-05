//
//  classFighter.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

// Fighter class
class Fighter: Character {
    static let typeOfCharacter = "fighter"
    var nameFighter: String
    init(nameFighter: String) {
        self.nameFighter = nameFighter
        super.init(weapons: "Sword", startingPoints: 100, damagesCausedByTheirAttacks: 10)
    }
}
