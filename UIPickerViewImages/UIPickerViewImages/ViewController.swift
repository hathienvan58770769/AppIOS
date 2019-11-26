//
//  ViewController.swift
//  UIPickerViewImages
//
//  Created by Van on 26/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerImg: UIPickerView!
    var arrImg:Array<UIImage> = [#imageLiteral(resourceName: "img5"), #imageLiteral(resourceName: "img3"), #imageLiteral(resourceName: "img9"), #imageLiteral(resourceName: "img10"), #imageLiteral(resourceName: "img11")]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerImg.delegate = self
        pickerImg.dataSource = self
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrImg.count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let img:UIImageView = UIImageView()
        img.frame = CGRect(x: 15, y: 10, width: 100, height: 100)
        img.image = arrImg[row]
        img.contentMode = .scaleAspectFit
        return img
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 240
    }
 
}

