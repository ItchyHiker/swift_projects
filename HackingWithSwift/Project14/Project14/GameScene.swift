//
//  GameScene.swift
//  Project14
//
//  Created by Yuhua Cheng on 11/11/19.
//  Copyright © 2019 yuhua.cheng.ihandysoft. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var slots = [WhackSlot]()
    var gameScore:SKLabelNode!
    var score = 0 {
        didSet {
            gameScore.text = "Score \(score)"
        }
    }
    
    func createSlot(at position: CGPoint) {
        let slot = WhackSlot()
        slot.configure(at: position)
        addChild(slot)
        slots.append(slot)
    }
    
    override func didMove(to view: SKView) {
        let backGround = SKSpriteNode(imageNamed: "whackBackground");
        backGround.position = CGPoint(x: 512, y: 384);
        backGround.blendMode = .replace
        backGround.zPosition = -1
        addChild(backGround)
        
        gameScore = SKLabelNode(fontNamed: "Chalkduster")
        gameScore.text = "Score: 0"
        gameScore.position = CGPoint(x:8, y:8);
        gameScore.horizontalAlignmentMode = .left
        gameScore.fontSize = 48
        addChild(gameScore)
        
        
        for i in 0 ..< 5 { createSlot(at: CGPoint(x: 100 + (i * 170), y: 410)) }
        for i in 0 ..< 4 { createSlot(at: CGPoint(x: 180 + (i * 170), y: 320)) }
        for i in 0 ..< 5 { createSlot(at: CGPoint(x: 100 + (i * 170), y: 230)) }
        for i in 0 ..< 4 { createSlot(at: CGPoint(x: 180 + (i * 170), y: 140)) }
    }
    
    
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
   
}
