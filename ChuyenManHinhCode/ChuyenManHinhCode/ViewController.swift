//
//  ViewController.swift
//  ChuyenManHinhCode
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit
//biến toàn cục
//khai báo ngoài class
var chuoi:String = ""

class ViewController: UIViewController {
    //cách 3 : lưu dữ liệu trên thiết bị
    let bienDB:UserDefaults = UserDefaults()
    @IBOutlet weak var txtNhapText: UITextField!
    @IBAction func btn_ChuyenMH2(_ sender: Any) {
        //cách1:
        //            chuoi = txtNhapText.text!
        //cách 3:
        bienDB.set(txtNhapText.text!, forKey: "data")
        //tạo biến định danh
        let scr = storyboard?.instantiateViewController(withIdentifier: "MH2") as! ManHinh2
        //cách 2:
        //            scr.dulieu = txtNhapText.text!
        //        present(scr, animated: true, completion: nil)
        navigationController?.pushViewController(scr, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

