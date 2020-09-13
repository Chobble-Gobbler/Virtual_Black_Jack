//
//  SecondContentView - ViewModel.swift
//  Black Jack vs Computer - v1
//
//  Created by Lennart Buhl on 9/11/20.
//  Copyright © 2020 Lennart Buhl. All rights reserved.
//

import SwiftUI

class SecondContentViewViewModel: ObservableObject {
    
    
    @Published var gameIsOver: Bool = true
    @Published var playerButtonPressed: Bool = false
    
    
    
    
    @Published var cardNames = allCardsNames.randomElement()!
    
    func getValueOfCards() -> Int {
        
        if cardNames == "Ace" {
            return 1
        }
        if cardNames == "Two" {
            return 2
        }
        if cardNames == "Three" {
            return 3
        }
        if cardNames == "Four" {
            return 4
        }
        if cardNames == "Five" {
            return 5
        }
        if cardNames == "Six" {
            return 6
        }
        if cardNames == "Seven" {
            return 7
        }
        if cardNames == "Eight" {
            return 8
        }
        if cardNames == "Nine" {
            return 9
        }
        if cardNames == "Ten" {
            return 10
        }
        if cardNames == "King" {
            return 10
        }
        if cardNames == "Queen" {
            return 10
        }
        if cardNames == "Joker" {
            return 10
        }
        
        return 0
        
    }
    
    
    let symbol = oneThroughFour.randomElement()!
    
    func getSymbol() -> String {
        
        if symbol == "suit.heart.fill" {
            return "suit.heart.fill"
        }
        if symbol == "suit.diamond.fill" {
            return "suit.diamond.fill"
        }
        if symbol == "suit.spade.fill" {
            return "suit.spade.fill"
        }
        if symbol == "suit.club.fill" {
            return "suit.club.fill"
        }
        
    return ""
}
    
    func getEqualColor() -> Color {
        
        if symbol == "suit.heart.fill" {
            return .red
        }
        if symbol == "suit.diamond.fill" {
            return .red
        }
        if symbol == "suit.spade.fill"{
            return .black
        }
        if symbol == "suit.club.fill" {
            return .black
        }
        
        return .red
        
    }
    
    @Published var computerPoints: Int = 0
    
    // var computerPoints += getValueOfCards()
    
    
//    func valueFromTopLeft() -> Int {
//       // var computerPoints: Int = 0
//
//        computerPoints += getValueOfCards()
//        return computerPoints
//    }
    
    
    
}

// MARK: - Card Names Array

var allCardsNames: [String] = ["Ace","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","King","Queen","Joker"]


// MARK: - One Through Four

var oneThroughFour: [String] = ["suit.heart.fill", "suit.diamond.fill", "suit.spade.fill", "suit.club.fill"]





