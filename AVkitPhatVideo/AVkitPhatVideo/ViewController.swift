//
//  ViewController.swift
//
//  Created by Van on 05/12/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class ViewController: UIViewController {
    var playerController:AVPlayerViewController! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        playerController = AVPlayerViewController()
        //C1:
//        let path:String = Bundle.main.path(forResource: "Blueming_IU", ofType: "mp4")!
//        let url:URL = URL(fileURLWithPath: path)
        //C2:
        let url:URL = URL(string: "http://hathienvan.000webhostapp.com/music/Blueming_IU.mp4")!
        playerController.player = AVPlayer(url: url)
        playerController.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 3)
        view.addSubview(playerController.view)
    }

    @IBAction func btnShow(_ sender: Any) {
        present(playerController, animated: true) {
            self.playerController.player?.play()
        }
    }
    

}

