//
//  GameScene.swift
//  SpriteKit Game
//
//  Created by Carlos Butron on 07/11/15.
//  Copyright © 2015 Carlos Butron. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        /* Main menu */
        self.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.3, alpha: 1.0)
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Game with SpriteKit"
        myLabel.fontSize = 20
        myLabel.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        self.addChild(myLabel)
        let myLabel2 = SKLabelNode(fontNamed:"Chalkduster")
        myLabel2.text = "Touch to start"
        myLabel2.fontSize = 15
        myLabel2.position = CGPoint(x:self.frame.midX, y:self.frame.midY - 100);
        self.addChild(myLabel2)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //on touch change scene
        let myTransition = SKTransition.doorsOpenVertical(withDuration: 1.0)
        let game = Game(size: self.size)
        self.scene?.view?.presentScene(game, transition: myTransition)
    }
    
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
}
