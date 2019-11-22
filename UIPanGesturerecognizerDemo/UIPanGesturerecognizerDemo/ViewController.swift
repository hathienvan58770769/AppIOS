//
//  ViewController.swift
//  UIPanGesturerecognizerDemo
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pan(_ sender: UIPanGestureRecognizer) {
        let index = sender.translation(in: view)
        sender.view?.transform = (sender.view?.transform.translatedBy(x: index.x, y: index.y))!
        sender.setTranslation(CGPoint.zero, in: view)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

