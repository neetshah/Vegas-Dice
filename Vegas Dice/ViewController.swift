//
//  ViewController.swift
//  Vegas Dice 
//
//  Created by Neet Shah on 2018-12-22.
//  Copyright © 2018 Neet Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }

    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        
        dice1.image = UIImage(named: "dice\(randomDiceIndex1)")
        
        dice2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
}

