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
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func rollButton(_ sender: UIButton) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
    }

}

