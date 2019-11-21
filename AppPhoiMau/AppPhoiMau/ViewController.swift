//
//  ViewController.swift
//  AppPhoiMau
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sldRed: UISlider!
    @IBOutlet weak var sldGreen: UISlider!
    @IBOutlet weak var sldBlue: UISlider!
    @IBAction func sld_Chonmau(_ sender: Any) {
//        view.backgroundColor = UIColor(displayP3Red: CGFloat(sldRed.value), green: CGFloat(sldGreen.value), blue: CGFloat(sldBlue.value), alpha: 1)
//        view.backgroundColor = UIColor(red: CGFloat(sldRed.value), green: CGFloat(sldGreen.value), blue: CGFloat(sldBlue.value), alpha: 1)
        view.backgroundColor = UIColor(red: CGFloat.init(sldRed.value), green: CGFloat.init(sldGreen.value), blue: CGFloat.init(sldBlue.value), alpha: 1)
        
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

}

