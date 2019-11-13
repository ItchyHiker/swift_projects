//
//  ViewController.swift
//  Project2
//
//  Created by Yuhua Cheng on 10/12/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var secondLabel: UILabel!
    
    
    var correctAnswer = 0
    var countries =  [String]()
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy"]
       // "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor;
        button2.layer.borderColor = UIColor.lightGray.cgColor;
        button3.layer.borderColor = UIColor.lightGray.cgColor;
        askQuestion(action: nil)
        
        if let navigationBar = self.navigationController?.navigationBar {
            let secondFrame = CGRect(x: navigationBar.frame.width-20, y: 0, width: 10, height: navigationBar.frame.height)
            
            secondLabel = UILabel(frame: secondFrame)
            secondLabel.text = "0"

            navigationBar.addSubview(secondLabel)
        }
        
    }
    func askQuestion(action: UIAlertAction!) {
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound:3)
        title = countries[correctAnswer].uppercased()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: UIControl.State.normal)
        button3.setImage(UIImage(named: countries[2]), for: UIControl.State.normal)
    }
    @IBAction func buttonTapped(_ sender: Any) {
        var title: String
        if (sender as AnyObject).tag == correctAnswer {
          title = "Correct"
          score += 1
        } else {
          title = "Wrong"
          score -= 1
        }
        secondLabel.text = String(score)
        // let mytext = "Your score is \(score)."
        let ac = UIAlertController(title: title, message: "Your score is \(score). \n That flag is \(countries[correctAnswer])", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true, completion: nil)
    }
    
    
}

