//
//  GameViewController.swift
//  SpriteKit Game
//
//  Created by Carlos Butron on 07/11/15.
//  Copyright (c) 2014 Carlos Butron.
//

import UIKit
import QuartzCore
import SceneKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configure the View
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        /* Sprite Kit optimize the render */
        skView.ignoresSiblingOrder = true
        
        /* Adjust the scene view to device */
        let scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }
    
    override var shouldAutorotate : Bool {
        return true
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return UIInterfaceOrientationMask.allButUpsideDown
        } else {
            return UIInterfaceOrientationMask.all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
