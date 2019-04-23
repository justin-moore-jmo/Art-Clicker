//
//  ViewController.swift
//  Art Clicker
//
//  Created by Justin Moore on 4/23/19.
//  Copyright © 2019 Justin Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        pointsLabel.text = String(currentPoints)
        moveForwardButton.alpha = 0
    }

    @IBOutlet weak var moveForwardButton: UIButton!
    @IBOutlet weak var pointsLabel: UILabel!
    var pointsPower: Int = 1
    var currentPoints: Int = 0
    
    
    @IBAction func createPointsButton(_ sender: Any) {
        currentPoints += pointsPower
        pointsLabel.text = String(currentPoints)
        if currentPoints >= 100{
            moveForwardButton.alpha = 1
        }
    }
    
    @IBAction func nextLevelButton(_ sender: Any) {
        if currentPoints >= 100{
            performSegue(withIdentifier: "SegueToSecondLevel", sender: nil)
        }
    }
}

class SecondLevel: ViewController{
    
}
