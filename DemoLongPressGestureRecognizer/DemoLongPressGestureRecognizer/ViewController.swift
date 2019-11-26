//
//  ViewController.swift
//  DemoLongPressGestureRecognizer
//
//  Created by Van on 22/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func long(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            let alert:UIAlertController = UIAlertController(title: "Thông báo", message: "Đây là con bọ", preferredStyle: UIAlertControllerStyle.alert)
            let btnOk:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.destructive, handler: nil)
            
            alert.addAction(btnOk)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

}

