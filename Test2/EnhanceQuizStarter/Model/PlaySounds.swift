//
//  PlaySounds.swift
//  EnhanceQuizStarter
//
//  Created by Wouter Willebrands on 23/12/2018.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import AudioToolbox

// this deals with the sounds for the game
class PlaySounds {
    
    static var gameSound: SystemSoundID = 0
    
    static func loadGameStartSound() {
        let path = Bundle.main.path(forResource: "jazzyintro", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    static func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
}

class PlayApplaus {
    
    static var gameSound: SystemSoundID = 0
    
    static func loadApplausSound() {
        let path = Bundle.main.path(forResource: "applaus", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    static func playApplausSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
}

class PlayBuzzer {
    
    static var gameSound: SystemSoundID = 0
    
    static func loadBuzzerSound() {
        let path = Bundle.main.path(forResource: "buzzer", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &gameSound)
    }
    
    static func playBuzzerSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
    
}

