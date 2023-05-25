//
//  GameViewController.swift
//  Bulba
//
//  Created by MacBookMBA4 on 24/05/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
            super.viewDidLoad()
            let scene = GameScene(size: CGSize(width: 390.0, height: 750.0))
            scene.scaleMode = .aspectFill
            
            let skView = view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.showsPhysics = true
            skView.ignoresSiblingOrder = true
            skView.presentScene(scene)
        }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
