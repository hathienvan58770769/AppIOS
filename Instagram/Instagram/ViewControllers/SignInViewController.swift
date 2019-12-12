//
//  SignInViewController.swift
//  Instagram
//
//  Created by Van on 06/12/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

   
    @IBOutlet weak var emailTextfiel: UITextField!
    @IBOutlet weak var passwordTextfiel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextfiel.backgroundColor = UIColor.clear
        emailTextfiel.attributedPlaceholder = NSAttributedString(string: emailTextfiel.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        emailTextfiel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        emailTextfiel.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 29, width: 500, height: 0.6)
        bottomLayer.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        emailTextfiel.layer.addSublayer(bottomLayer)
        
        passwordTextfiel.backgroundColor = UIColor.clear
        passwordTextfiel.attributedPlaceholder = NSAttributedString(string: passwordTextfiel.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 1.0, alpha: 0.6)])
        passwordTextfiel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        passwordTextfiel.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let bottomLayerPassword = CALayer()
        bottomLayerPassword.frame = CGRect(x: 0, y: 29, width: 500, height: 0.6)
        bottomLayerPassword.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        passwordTextfiel.layer.addSublayer(bottomLayerPassword)
        
    }

    
}
