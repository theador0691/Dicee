//
//  ViewController.swift
//  Dicee
//
//  Created by Andrew Taylor on 03/01/2018.
//  Copyright © 2018 Andrew Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func randomNumberGenerator() -> Int {
        return Int(arc4random_uniform(7))
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = randomNumberGenerator()
        randomDiceIndex2 = randomNumberGenerator()
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")

    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

