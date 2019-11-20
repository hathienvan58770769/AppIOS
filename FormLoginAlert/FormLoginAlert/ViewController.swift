//
//  ViewController.swift
//  FormLoginAlert
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
        let alert:UIAlertController = UIAlertController(title: "Login", message: "Vui lòng nhập thông tin", preferredStyle: UIAlertControllerStyle.alert)
        alert.addTextField { (txtEmail) in
            txtEmail.placeholder = "✉️Nhập Email ..."
            
        }
        alert.addTextField { (txtPassword) in
            txtPassword.placeholder = "🗝 Nhập password"
            txtPassword.isSecureTextEntry = true
        }
        let btnLogin:UIAlertAction = UIAlertAction(title: "Đăng nhập", style: UIAlertActionStyle.destructive) { (btnDangnhap) in
            let email:String = alert.textFields![0].text!
            let pass:String = alert.textFields![1].text!
            if email == "hathienvan58@gmail.com" && pass == "123456"{
                self.ThongBaoKetQua(message: "Đăng nhập thành công")
            }else{
                self.ThongBaoKetQua(message: "Đăng nhập thất bại")
            }
        }
        let btnCancel:UIAlertAction = UIAlertAction(title: "Huỷ", style: UIAlertActionStyle.cancel) { (btnHuy) in
            
        }
        alert.addAction(btnLogin)
        alert.addAction(btnCancel)
        
        present(alert, animated: true, completion: nil)
    }
    func ThongBaoKetQua(message:String){
        let alert:UIAlertController = UIAlertController(title: "Thông báo", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let btnOk:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(btnOk)
        present(alert, animated: true, completion: nil)
    }


}

