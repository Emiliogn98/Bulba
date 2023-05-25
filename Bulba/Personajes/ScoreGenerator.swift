//
//  ScoreGenerator.swift
//  Bulba
//
//  Created by MacBookMBA4 on 24/05/23.
//

import Foundation


class ScoreGenerator {
    
    static let sharedInstance = ScoreGenerator()
    private init() {}
    
    static let keyHighscore = "keyHighscore"
    
    func setHighscore(_ highscore: Int) {
        UserDefaults.standard.set(highscore, forKey: ScoreGenerator.keyHighscore)
    }
    
    func getHighscore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyHighscore)
    }
}
