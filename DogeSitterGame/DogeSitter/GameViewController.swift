//
//  GameViewController.swift
//  DogeSitter
//
//  Created by Christine Chen on 4/21/16.
//  Copyright (c) 2016 Christine Chen. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (userDefaults.value(forKey: "highScore") == nil) {
            userDefaults.setValue(Int(0), forKey: "highScore")
        }

        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = false
            skView.showsNodeCount = false
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .aspectFill
            scene.size = self.view.frame.size
            
            skView.presentScene(scene)
        }
    }

    override var shouldAutorotate : Bool {
        return false
    }

    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return .portrait
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden : Bool {
        return true
    }
    
}
