//
//  classPlayerTwo.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

// Player two
class PlayerTwo: Player {
    static var player2Name: [String] = []
    // function that greets the second player
    static func welcomePlayerTwo() {
        print("What is your name player number two?")
        let secondPlayer = readLine()
        player2Name.append("\(String(describing: secondPlayer))")
        let player2 = Player(name: "\(String(describing: secondPlayer))", team: 2)
        print("welcome to The Game \(player2.name)")
        //  The fisrt player is invited to form his team
        print("It is time for you to choose your three characters to form a team!")
    }
    static var namePlayerTwo = "\(player2Name[0])"
}
