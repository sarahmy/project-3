//
//  main.swift
//  jeu
//
//  Created by Sarah Maimoun on 23/12/2018.
//  Copyright © 2018 Sarah Maimoun. All rights reserved.
//

import Foundation


// proposing the options of characters
var firstTeam: [Character] = []
var names: [String] = []
var firstTeamNames: [String] = []
var nameToCheck: [String] = []

let nameIt: String = ""



print("Hello, Welcome to The Game")
//  start of the game
//  creation of a team


//   introducing the first player
print("What is your name player number one?")
var firstPlayer = readLine()
print("welcome to The Game \(String(describing: firstPlayer))!")
let player1 = Player(name: "\(String(describing: firstPlayer))", team: 1)

//  The fisrt player is invited to form his team
print("It is time for you to choose your three characters to form a team!")

names.append("")
//function to verify that the name is unique

// invitation to the first player to compose his team
composeYourTeamFirstPlayer()



//   introducing the second player
print("What is your name player number two?")
var secondPlayer = readLine()
print("welcome to The Game \(String(describing: secondPlayer))!")
let player2 = Player(name: "\(String(describing: secondPlayer))", team: 2)

//  The fisrt player is invited to form his team
print("It is time for you to choose your three characters to form a team!")
// proposing the options of characters
var secondTeam: [Character] = []
var secondTeamNames: [String] = []
// Function to compose your team

// invitation to the second player to compose his team
composeYourTeamSecondPlayer()




// second part of the project 3

//reminding the composition of the two teams to the players
reminderTeams()



// functions to determined the attackers et defied ones on each team
// attacker et defied one on team one
var battle : [Int] = []
var opponent : [Int] = []
var healed : [Int] = []


// game launch
gameOn()









