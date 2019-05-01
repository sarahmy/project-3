//
//  classPartyStart.swift
//  Project3Game
//
//  Created by Sarah Maimoun on 01/05/2019.
//  Copyright © 2019 Sarah Maimoun. All rights reserved.
//

import Foundation

class PartyStart {
    static func startTheParty() {
        // The first player is welcomed to the game and asked to give his name
        PlayerOne.welcomePlayerOne()
        // proposing the options of characters
        Team.introductCharacters()
        // invitation to the first player to compose his team
        FirstTeam.composeYourTeamFirstPlayer()
        // The first player is welcomed to the game and asked to give his name
        PlayerTwo.welcomePlayerTwo()
        // invitation to the second player to compose his team
        SecondTeam.composeYourTeamSecondPlayer()
        // second part of the project 3
        //reminding the composition of the two teams to the players
        Team.reminderTeams()
        // the fights begin
        Fights.gameOn()
    }
}
