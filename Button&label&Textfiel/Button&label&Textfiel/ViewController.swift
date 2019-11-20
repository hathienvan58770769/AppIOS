//
//  ViewController.swift
//  Button&label&Textfiel
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHienThi: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    @IBAction func btn_Login(_ sender: Any) {
        let email:String = txtEmail.text!
        let fullname:String = txtFullname.text!
        lblHienThi.text = "Email của bạn là : \(email) \n Full name của bạn là : \(fullname)"
    }
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtFullname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblHienThi.text = ""
        btnLogin.layer.cornerRadius = 5
        btnLogin.clipsToBounds = true
        
  
    }

}

