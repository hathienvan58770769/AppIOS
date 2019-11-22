//
//  ViewController.swift
//  UIpinchGesureRecoginer
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pinch_Img(_ sender: Any) {
         print("đang scale")
    }
   
    @IBOutlet var pinchImg: UIPinchGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        //2 ngón tay
        pinchImg.scale = 2
        
        
     
    }

}

