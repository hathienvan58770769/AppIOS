//
//  ViewController.swift
//  UITabGesureRecoginerDemo
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tap_View(_ sender: Any) {
   
        let tab:UITapGestureRecognizer = sender as! UITapGestureRecognizer
        print(tab.location(in: view))
        let img:UIImageView = UIImageView()
        img.image = #imageLiteral(resourceName: "img5")
        img.frame.size  = CGSize(width: 50, height: 50)
        img.center = tab.location(in: view)
        view.addSubview(img)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

