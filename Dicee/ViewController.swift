//
//  ViewController.swift
//  Dicee
//
//  Created by Bill Glover on 01/10/2017.
//  Copyright © 2017 Bill Glover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceAarray : Array = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    func rollDice() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = diceAarray[randomDiceIndex1]
        diceImageView2.image = diceAarray[randomDiceIndex2]
    }
    
}
