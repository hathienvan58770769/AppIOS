 //
//  ViewController.swift
//  UIScreenEdgePanGestureRecognizer
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func sceen_adeg(_ sender: UIScreenEdgePanGestureRecognizer) {
        print("Vuot canh man hinh")
    }
    @IBOutlet var sreen_adeg: UIScreenEdgePanGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        sreen_adeg.minimumNumberOfTouches = 1
    }



}

