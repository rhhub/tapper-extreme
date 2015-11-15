//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Ryan Huebert on 11/15/15.
//  Copyright © 2015 Ryan Huebert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        logoImage.hidden = true
        playButton.hidden = true
        howManyTapsTxt.hidden = true
        
        tapButton.hidden = false
        tapsLabel.hidden = false
    }
}

