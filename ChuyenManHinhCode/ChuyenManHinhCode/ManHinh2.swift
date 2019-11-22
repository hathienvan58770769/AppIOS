//
//  ManHinh2.swift
//  ChuyenManHinhCode
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ManHinh2: UIViewController {
    //cách 3:
    let biendb:UserDefaults = UserDefaults()
    
    @IBOutlet weak var lblHienThi: UILabel!
    //cách 2:
    //    var dulieu:String!
    
    //    @IBAction func btn_ChuyenMH1(_ sender: Any) {
    //        let scr = storyboard?.instantiateViewController(withIdentifier: "MH1") as! ViewController
    //        present(scr, animated: true, completion: nil)
    //    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //cách 1:
        //            lblHienThi.text = chuoi
        //cách 2: 
        //        lblHienThi.text = dulieu
        //cách 3:
        let string:String = biendb.object(forKey: "data") as! String
        lblHienThi.text = string
    }
    
}
