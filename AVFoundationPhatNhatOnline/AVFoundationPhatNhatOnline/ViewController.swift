//
//  ViewController.swift
//  AVFoundationPhatNhatOnline
//
//  Created by Van on 05/12/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL = URL(string: "http://data18.chiasenhac.com/downloads/2017/4/2016650-9f89c596/128/Mang%20Chung%20-%20Am%20Khuyet%20Thi%20Thinh_Trieu%20P%20[128kbps_MP3].mp3")!
        do{
            let data:Data = try Data(contentsOf: url)
            do{
                player = try AVAudioPlayer(data: data)
                player.play()
                player.volume = 0.5
            }catch{
                print("Loi phat nhac")
            }
            
        }catch{
            print("erorr")
        }
        
        
        
    }

}

