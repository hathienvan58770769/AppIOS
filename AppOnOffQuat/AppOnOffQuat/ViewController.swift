//
//  ViewController.swift
//  AppOnOffQuat
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer:Timer!
    var gocxoay:Double = 0
    @IBAction func swQuat(_ sender: Any) {
        if let sw = sender as? UISwitch {
            if sw.isOn{
                //180 do = 1pi
                timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (funOn) in
                    self.gocxoay += 10
                    self.imgQuat.transform = CGAffineTransform(rotationAngle: CGFloat((self.gocxoay * .pi) / 180))
                })
                print("Quạt bật")
            }else{
                timer.invalidate()
                timer = nil
                print("Quạt tắt")
            }
        }
    }
    @IBOutlet weak var imgQuat: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

