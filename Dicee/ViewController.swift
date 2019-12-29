//
//  ViewController.swift
//  Dicee
//
//  Created by Annekatrin Dunkel on 7/1/19.
//  Copyright © 2019 Annekatrin Dunkel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1", "dice2", "dice3",  "dice4", "dice5","dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDiceImages()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //This will get executed when the roll button gets pressed.
        
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

