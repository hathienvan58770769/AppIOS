//
//  ViewController.swift
//  Bai12-Textfield
//
//  Created by Hà Thiên Vân on 11/14/19.
//  Copyright © 2019 Hà Thiên Vân. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtUsername.text = ""
        txtUsername.placeholder = "Username 😀"
        txtUsername.isSecureTextEntry = false
        txtUsername.keyboardType = .default
    }


}

