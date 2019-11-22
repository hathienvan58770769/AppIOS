//
//  ViewController.swift
//  UIRotationGestureRecognizer
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func rotationXoay(_ sender: UIRotationGestureRecognizer) {
        print("đang xoay")
     
        sender.view?.transform = (sender.view?.transform.rotated(by: sender.rotation))!
        sender.rotation = 0 
    }
    @IBOutlet weak var imgXoay: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

