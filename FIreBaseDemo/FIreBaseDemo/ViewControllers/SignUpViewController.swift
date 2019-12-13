//
//  SignUpViewController.swift
//  FIreBaseDemo
//
//  Created by Van on 12/12/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        setUpElements()
    }
    func setUpElements()  {
        ErrorLabel.alpha = 0
        Utilities.styleTextField(firstNameTextfield)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        
        Utilities.styleFilledButton(SignUpButton)
    }

    @IBAction func SignUpTapped(_ sender: Any) {
    }
    

}
