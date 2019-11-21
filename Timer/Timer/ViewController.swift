//
//  ViewController.swift
//  Timer
//
//  Created by Van on 20/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer!
    var i:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //cách 1:
//        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (tgcho) in
//            print("Hello")
            //cách 2:
        timer = Timer.scheduledTimer(timeInterval: 3, target: ViewController(), selector: #selector(ViewController.Chay), userInfo: nil, repeats: true)
            
        }
    @objc func Chay(){
        i += 1
        print("Xin chào các bạn")
        if i == 5 {
            timer.invalidate()
            timer = nil
        }
        
        }
    }

