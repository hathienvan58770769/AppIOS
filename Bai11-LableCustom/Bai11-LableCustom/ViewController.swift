//
//  ViewController.swift
//  Bai11-LableCustom
//
//  Created by Hà Thiên Vân on 11/14/19.
//  Copyright © 2019 Hà Thiên Vân. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var layoutView: UIView!
    @IBOutlet weak var lblCustom: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblCustom.text = "Van 🙁"
        lblCustom.layer.cornerRadius = lblCustom.frame.size.height / 2
        lblCustom.clipsToBounds = true
    
    }


}

