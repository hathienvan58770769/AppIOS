//
//  ViewController.swift
//  Bai8-Anhxa
//
//  Created by Hà Thiên Vân on 11/13/19.
//  Copyright © 2019 Hà Thiên Vân. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnButton: UIButton!
    @IBAction func btn_Nut(_ sender: Any) {
        print("Hello")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnButton.layer.cornerRadius = 200
    }


}

