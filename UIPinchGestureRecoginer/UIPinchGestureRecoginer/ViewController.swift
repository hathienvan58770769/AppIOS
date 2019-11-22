//
//  ViewController.swift
//  UIPinchGestureRecoginer
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHinh: UIImageView!
    @IBAction func pinch_Img(_ sender: Any) {
        let pinch:UIPinchGestureRecognizer = sender as! UIPinchGestureRecognizer
        print(pinch.scale)
//        imgHinh.transform = imgHinh.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.view?.transform = (pinch.view?.transform.scaledBy(x: pinch.scale, y: pinch.scale))!
        
        pinch.scale = 1
    }
    @IBOutlet var pinchImg: UIPinchGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        pinchImg.scale = 2

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

