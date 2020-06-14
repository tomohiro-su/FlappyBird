//
//  ViewController.swift
//  FlappyBird
//
//  Created by 須田　知弘 on 2020/06/10.
//  Copyright © 2020 tomohiro.suda. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // SKViewに型を変換する
        let skView = self.view as! SKView

        // FPSを表示する
        skView.showsFPS = true

        // ノードの数を表示する
        skView.showsNodeCount = true

        // ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)

        // ビューにシーンを表示する
        skView.presentScene(scene)
    }
    // ステータスバーを消す --- ここから ---
      override var prefersStatusBarHidden: Bool {
          get {
              return true
          }
      } // --- ここまで追加 ---
}

