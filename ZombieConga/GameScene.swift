//
//  GameScene.swift
//  ZombieConga
//
//  Created by Parrot on 2019-01-29.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
   
    // Make zombie global, so other functions can access it

    
    // Movement variables

    
    override func didMove(to view: SKView) {
        // Set the background color of the app
        self.backgroundColor = SKColor.black;
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Remember:  The game loop is:
        //      - updatePositions
        //      - drawPositions
        //      - setFPS
        // In IOS, the update() function == updatePositions() function from Android game template

        

    }
    
    
    // MARK: Detect when user taps the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // get the first "tap" on the screen
        let touch = touches.first
        
        if (touch == nil) {
            // if for some reason the "tap" return as null, then exit
            return
        }
        
        let touchLocation = touch!.location(in: self)
        print("User tapped screen at: \(touchLocation.x.rounded()),\(touchLocation.y.rounded())")
    }
    
}
