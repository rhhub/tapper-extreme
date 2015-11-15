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
    
    var maxTaps = 0
    var currentTaps = 0
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if let tapsString = howManyTapsTxt.text {
            if let tapsInt = Int(tapsString) {
                logoImage.hidden = true
                playButton.hidden = true
                howManyTapsTxt.hidden = true
                
                tapButton.hidden = false
                tapsLabel.hidden = false
                
                maxTaps = tapsInt
                currentTaps = 0
                tapsLabel.text = "\(currentTaps) Taps"
            }
        }
    }
}

