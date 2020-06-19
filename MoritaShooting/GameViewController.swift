//
//  GameViewController.swift
//  MoritaShooting
//
//  Created by fukasawayuki on 2020/06/18.
//  Copyright © 2020 fukasawayuki. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                (scene as! GameScene).vc = self //追加
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}


    //スタート画面処理
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        if let view = self.view as! SKView? {
//            if let scene = SKScene(fileNamed: "gameScene") {
//                //Setthe scale mode to scale to fit the window
//                scene.scaleMode = .aspectFill
//
//                (scene as ! GameScene).vc = self  //追加
//
//                // Present the scene
//                view.presentScene(sceve)
//
//
//            }
//        }
//    }
