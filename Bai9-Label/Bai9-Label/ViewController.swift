//
//  ViewController.swift
//  Bai9-Label
//
//  Created by Hà Thiên Vân on 11/13/19.
//  Copyright © 2019 Hà Thiên Vân. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_Custom1: UILabel!
    @IBOutlet weak var lbl_Custom2: UILabel!
    @IBOutlet weak var lbl_Custom3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbl_Custom2.layer.cornerRadius = 50
    }


}

