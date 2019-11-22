//
//  ViewController.swift
//  UIScreenGestureRecognizer
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slidemenu: UIView!
    @IBAction func screen_adge(_ sender: UIScreenEdgePanGestureRecognizer) {
        
        UIView.animate(withDuration: 1) {
            self.slidemenu.alpha = 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        slidemenu.alpha = 0
    }


}

