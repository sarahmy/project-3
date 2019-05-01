//
//  File.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
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
