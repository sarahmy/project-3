//
//  classPlayerOne.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class PlayerOne: Player {
    static var player1Name: [String] = []
    // function that greets the first player
    static func welcomePlayerOne() {
        print("Hello, Welcome to The Game")
        //  start of the game
        //   introducing the first player
        print("What is your name player number one?")
        let firstPlayer = readLine()
        player1Name.append("\(String(describing: firstPlayer))")
        let player1 = Player(name: "\(String(describing: firstPlayer))", team: 1)
        print("welcome to The Game \(player1.name)")
        //  The fisrt player is invited to form his team
        print("It is time for you to choose your three characters to form a team!")
    }
    static var namePlayerOne = "\(player1Name[0])"
}

