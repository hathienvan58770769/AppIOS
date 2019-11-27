//
//  ViewController.swift
//  DemoUiPickerView
//
//  Created by Van on 26/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{
    @IBOutlet weak var lblConet: UILabel!
    @IBOutlet weak var imgHinh: UIImageView!
    @IBOutlet weak var pickerDemo: UIPickerView!
    var arrImg:Array<Array<UIImage>> = [[#imageLiteral(resourceName: "img11"),#imageLiteral(resourceName: "img10"),#imageLiteral(resourceName: "img9"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img5")], [ #imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img8"),#imageLiteral(resourceName: "img7"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img13")]]
    var arrTenHinh:Array<Array<String>> = [["tôm","cá ngừ","vịt","mèo","cá vàng" ], ["bọ cánh cứng","chó nâu", "chó vàng", "bò sữa","cú mèo"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerDemo.dataSource = self
        pickerDemo.delegate = self
        pickerDemo.selectRow(4, inComponent: 0, animated: true)
        pickerDemo.selectRow(1, inComponent: 1, animated: true)
        lblConet.text = arrTenHinh[0][4]
        imgHinh.image = arrImg[0][4]
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return arrImg.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrImg[component].count
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let _view:UIView = UIView()
        _view.frame = CGRect(x: 0, y: 0, width: pickerView.frame.width / 3, height: 200)
        let img:UIImageView = UIImageView()
        img.frame = CGRect(x: 0, y: 0, width: _view.frame.width, height: _view.frame.height)
        img.image = arrImg[component][row]
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        let lbl:UILabel = UILabel()
        lbl.text = arrTenHinh[component][row]
        lbl.frame = CGRect(x: 0, y: _view.frame.height - 30, width: _view.frame.width, height: 30)
        _view.addSubview(img)
        _view.addSubview(lbl)
        return _view
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 200
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row,component)
        lblConet.text  = arrTenHinh[component][row]
        imgHinh.image = arrImg[component][row]
        
    }
    

 

}

