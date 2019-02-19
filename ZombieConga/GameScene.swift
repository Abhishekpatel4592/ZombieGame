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
    let zombie = SKSpriteNode(imageNamed: "zombie1")
    
    // Movement variables

    
    override func didMove(to view: SKView) {
        
        // BACKGROUND------------------------------------------------------------------------------------
        
        // Set the background color of the app
        self.backgroundColor = SKColor.black;
        
        // ADD a background image
        let bg = SKSpriteNode(imageNamed: "background1")
        
        // Set the Position of the background image in the middle of the screen
        bg.position = CGPoint(x: size.width/2, y: size.height/2)
        
        //Force the Background image alway in back
        bg.zPosition = -1
        
        //Finally add the background to the screen
        addChild(bg)
        
        //-------------------------------------------------------------------------------------------------
        
        
        // ZOMBIE ADDING ON THE SCREEN --------------------------------------------------------------------
        
        //Adding zombie image
        //let zombie = SKSpriteNode(imageNamed: "zombie1")
        
        //Setting the position
        zombie.position = CGPoint(x: 400, y: 400)
        
        //Finally Adding the image on screen
        addChild(zombie)
        
        //-------------------------------------------------------------------------------------------------
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Remember:  The game loop is:
        //      - updatePositions
        //      - drawPositions
        //      - setFPS
        // In IOS, the update() function == updatePositions() function from Android game template
        
        //Making Zombie move to the right
        let zombieX = self.zombie.position.x + 10
        self.zombie.position = CGPoint(x: zombieX, y: self.zombie.position.y)
        
        

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
