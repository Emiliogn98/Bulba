//
//  Bulba.swift
//  Bulba
//
//  Created by MacBookMBA4 on 24/05/23.
//

import Foundation
import SpriteKit

class Player: SKSpriteNode {
    
    var isMoveDown = false
    
    init() {
        let texture = SKTexture(imageNamed: "player1")
        super.init(texture: texture, color: .clear, size: texture.size())
        name = "Player"
        zPosition = 1.0
        //zPosition = -1.0
        setScale(0.55)
        
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody!.affectedByGravity = false
        physicsBody!.categoryBitMask = PhysicsCategory.Player
       physicsBody!.collisionBitMask = PhysicsCategory.Wall
       physicsBody!.contactTestBitMask = PhysicsCategory.Wall | PhysicsCategory.Score
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Configurations

extension Player {
    
    func setupPlayer(_ ground: Ground, scene: SKScene) {
        
      
        position = CGPoint(x: scene.frame.width/3.0 - 100.0, y: (scene.frame.height + ground.frame.height + frame.height)/4.3) // 4
       // position = CGPoint(x: scene.frame.width/2.0 - 100.0, y: (scene.frame.height + ground.frame.height + frame.height)/2) // 4
        scene.addChild(self)
        setupAnim()
    }
    
    func setupAnim() {
        var textures: [SKTexture] = []
        
        for i in 1...2 {
            textures.append(SKTexture(imageNamed: "player"))
        }
        
        run(.repeatForever(.animate(with: textures, timePerFrame: 0.10)))
    }
    
    func setupMoveUpDown() {
        isMoveDown = !isMoveDown
        let scale: CGFloat
        
        if isMoveDown {
            scale = 0.55//-0.75
            
        } else {
            scale = -0.55//0.75
        }
        
        let flipY = SKAction.scaleY(to: scale, duration: 0.1)
        run(flipY)
        
        //let moveBy = SKAction.moveBy(x: 0.0, y: scale*(frame.width*2.6), duration: 0.1)
        let moveBy = SKAction.moveBy(x: 0.0, y: scale*(frame.width*3), duration: 0.1)
        run(moveBy)
    }
    func movePlayer(){
      //  let amountToMove = came
    }
}
