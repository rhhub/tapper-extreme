//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Ryan Huebert on 11/15/15.
//  Copyright © 2015 Ryan Huebert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    
    private var maxTaps = 0
    private var currentTaps = 0 {
        didSet {
            tapsLabel.text? = "\(currentTaps) Taps"
        }
    }
    
    // Outlets
    @IBOutlet weak private var logoImage: UIImageView!
    @IBOutlet weak private var howManyTapsTxt: UITextField!
    @IBOutlet weak private var playButton: UIButton!
    
    @IBOutlet weak private var tapButton: UIButton!
    @IBOutlet weak private var tapsLabel: UILabel!
    
    @IBAction private func coinTapButtonPressed(sender: UIButton) {
        currentTaps++
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction private func onPlayButtonPressed(sender: UIButton!) {
        if let tapsString = howManyTapsTxt.text {
            if let tapsInt = Int(tapsString) {
                logoImage.hidden = true
                playButton.hidden = true
                howManyTapsTxt.hidden = true
                
                tapButton.hidden = false
                tapsLabel.hidden = false
                
                maxTaps = tapsInt
                currentTaps = 0
            }
        }
    }
    
    private func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    private func isGameOver() -> Bool {
        return currentTaps >= maxTaps ? true : false
    }
}

