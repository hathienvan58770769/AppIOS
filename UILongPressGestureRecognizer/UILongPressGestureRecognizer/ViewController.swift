//
//  ViewController.swift
//  UILongPressGestureRecognizer
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    @IBAction func long_img(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began{
            
            let index1 = sender.location(in: img)
            let index2 = sender.location(in: view)
            print(index1, index2)
        }
    }
    @IBOutlet var longpress: UILongPressGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
      longpress.numberOfTouchesRequired = 1
        longpress.minimumPressDuration = CFTimeInterval(floatLiteral: 0.3)
        
    }

}

