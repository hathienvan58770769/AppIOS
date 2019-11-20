//
//  ViewController.swift
//  ActionSheetOfAlert
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let action:UIAlertController = UIAlertController(title: "Thông báo", message: "Đây là thông báo", preferredStyle: UIAlertControllerStyle.actionSheet)
        let btnOk:UIAlertAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.destructive) { (btnOk) in
            
        }
        let btnCancel:UIAlertAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) { (btnCancel) in
            
        }
        action.addAction(btnOk)
        action.addAction(btnCancel)
        present(action, animated: true, completion: nil)
    }


}

