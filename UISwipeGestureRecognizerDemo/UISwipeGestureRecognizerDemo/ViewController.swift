//
//  ViewController.swift
//  UISwipeGestureRecognizerDemo
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var goc:CGFloat = 0
    @IBAction func swipeView(_ sender: UISwipeGestureRecognizer) {
        goc += 45
        UIView.animate(withDuration: 0.5) {
            self.imgHinh.layer.transform = CATransform3DMakeRotation((.pi * self.goc ) / 180, 0, 0, 1)
        }
       
    }
    @IBOutlet weak var imgHinh: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

