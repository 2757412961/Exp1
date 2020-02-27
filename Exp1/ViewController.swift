//
//  ViewController.swift
//  Exp1
//
//  Created by z on 2020/2/26.
//  Copyright © 2020 z. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🐶", "🐱", "🐭", "🐹"]
    
    var flipCount: Int = 0 {
        didSet{
            flipCountLabel.text = "FlipCount：\(flipCount)"
        }
    }
    

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
//        flipCountLabel.text = "FlipCount：\(flipCount)"
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        
//        flipCard(withEmoji: "🦁", on: sender)
    }
    
    func flipCard(withEmoji emoji:String, on button:UIButton) {
        if emoji == button.currentTitle {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        }
    }
    
    
    
    
}

