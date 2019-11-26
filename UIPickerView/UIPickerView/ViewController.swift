//
//  ViewController.swift
//  UIPickerView
//
//  Created by Van on 25/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    //mảng 2 chiều or nhiều chiều
    let arrData:Array<Array<String>> = [["Hello", "Hi", "Xin chào","Vân mập"], ["IOS", "Android", "swift","Php","Java"], [ "Android2.3", "swift3","Php5",]]
    //Mảng 1 chiều
    //    let arrData2:Array<String> = ["IOS", "Android", "swift","Php","Java"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //        return 2
        return arrData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //        if component == 0 {
        //            return arrData.count
        //        }else{
        //            return arrData2.count
        //        }
        return arrData[component].count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //        if component == 0 {
        //            return arrData[row]
        //        }else{
        //            return arrData2[row]
        //        }
        return arrData[component][row]
        
    }
    @IBOutlet weak var picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        
    }
}

