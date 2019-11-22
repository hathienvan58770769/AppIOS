//
//  ViewController.swift
//  UITapGestureRecognizer
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tabImg: UITapGestureRecognizer!
    
    @IBAction func tab_Img(_ sender: Any) {
        print("Đang tab vào tấm hình")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tabImg.numberOfTapsRequired = 2
        tabImg.numberOfTouchesRequired = 2
        
    }

    
}

