//
//  ViewController.swift
//  DemoMotionShake
//
//  Created by Van on 25/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i:CGFloat = 0
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (time) in
            self.i += 10
            UIView.animate(withDuration: 0.5, animations: {
                self.img.layer.transform = CATransform3DMakeTranslation(0, self.i, 0)
            })
        }
    }

    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        i -= 25
        if motion == UIEventSubtype.motionShake {
            UIView.animate(withDuration: 0.2, animations: {
                self.img.layer.transform = CATransform3DMakeTranslation(0, self.i, 0)
            })
            print("Đang lắc đt")
        }
    }
}

