//
//  ViewController.swift
//  Dicee
//
//  Created by Brian_Fabello on 6/12/19.
//  Copyright © 2019 Brian Fabello. All rights reserved.
//
  
class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    //Interface Builder Outlet
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
        
    }
    
    //when roll button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()

    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()

    }
    func updateDice(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

