//
//  ViewController.swift
//  Slider
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var sld3: UISlider!
    @IBOutlet weak var sld2: UISlider!
    @IBOutlet weak var sld1: UISlider!
    @IBAction func sld_GiaTri(_ sender: UISlider) {
        //lấy giá trị slider
        //print(sldGiaTri.value)
        print(sender.value)
    }
    @IBOutlet weak var sldGiaTri: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        //slider Giá Trị
        sldGiaTri.maximumValue = 20
        sldGiaTri.minimumValue = 5
        sldGiaTri.value = 10
        sldGiaTri.minimumTrackTintColor = #colorLiteral(red: 0.3084011078, green: 0.5618229508, blue: 0, alpha: 1)
        sldGiaTri.maximumTrackTintColor = #colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)
        sldGiaTri.thumbTintColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        //Slider 1
        sld1.minimumTrackTintColor = #colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)
        sld1.maximumTrackTintColor = #colorLiteral(red: 0.9883181453, green: 0.7802327275, blue: 0.9274708033, alpha: 1)
        sld1.thumbTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        sld1.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        //Slider 2
        
        sld2.setThumbImage(UIImage(named: "img15"), for: UIControlState.normal)
        sld3.setThumbImage(#imageLiteral(resourceName: "img14"), for: UIControlState.highlighted)
        
        
    
    }
}

