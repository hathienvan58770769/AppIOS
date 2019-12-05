//
//  ViewController.swift
//  avPlayMedia
//
//  Created by Van on 02/12/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player:AVAudioPlayer!
    
    @IBOutlet weak var slider_time: UISlider!
    
    @IBOutlet weak var slider_volume: UISlider!
    @IBAction func slidervolume(_ sender: UISlider) {
        player.volume = sender.value
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //C1:
//        let path:String = Bundle.main.path(forResource: "My-Nhan-Dinh-Dai-Vu", ofType: ".mp3")!
//        let url:URL = URL(fileURLWithPath: path)
        //C2:
        let url:URL = URL(fileURLWithPath: "/Users/van/Downloads/My-Nhan-Dinh-Dai-Vu.mp3")
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
            slider_time.maximumValue = Float(Int(player.duration))
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (time) in
                self.slider_time.value = Float(self.player.currentTime)
                
                
            })
            print(player.duration)
            player.volume = 0.5
            
        }catch{
          print("Loi phat nhac")
        }
        
    }

}

