//
//  ViewController.swift
//  Switch
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imgHinh: UIImageView!
    
    @IBAction func sw_Nut(_ sender: Any) {
        //Cách 1:
//        if swNut.isOn {
//            imgHinh.image = UIImage(named: "lighton")
//            print("Light On")
//        }else{
//            imgHinh.image = #imageLiteral(resourceName: "lightoff")
//            print("Light Off")
//        }
        //Cách 2:
        if let sw = sender as? UISwitch {
            if sw.isOn{
                imgHinh.image = UIImage(named: "lighton")
                print("Light On")
            }else{
                imgHinh.image = #imageLiteral(resourceName: "lightoff")
                print("Light Off")
            }
        }
    }
    @IBOutlet weak var swNut: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        swNut.isOn = false
        swNut.onTintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        swNut.thumbTintColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        swNut.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
}

