//
//  ViewController.swift
//  ScrollViewCode
//
//  Created by Van on 02/12/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //b1:layout nhu 1 doi tuong bt
        let scroll:UIScrollView = UIScrollView()
        view.addSubview(scroll)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scroll.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        scroll.widthAnchor.constraint(equalToConstant: 200).isActive = true
        scroll.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //b2: xac dinh bien
        let viewxanh:UIView = UIView()
        viewxanh.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        scroll.addSubview(viewxanh)
        viewxanh.translatesAutoresizingMaskIntoConstraints = false
            viewxanh.topAnchor.constraint(equalTo: scroll.topAnchor).isActive = true
            viewxanh.bottomAnchor.constraint(equalTo: scroll.bottomAnchor).isActive = true
            viewxanh.leftAnchor.constraint(equalTo: scroll.leftAnchor).isActive = true
            viewxanh.rightAnchor.constraint(equalTo: scroll.rightAnchor).isActive = true
        //b3: xac dinh kich thuoc noi dung
        viewxanh.widthAnchor.constraint(equalToConstant: 400).isActive = true
        viewxanh.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

