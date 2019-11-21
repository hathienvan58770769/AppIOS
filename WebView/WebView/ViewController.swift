//
//  ViewController.swift
//  WebView
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wvWeb: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url:URL = URL(string: "https://www.youtube.com/embed/6oanIo_2Z4Q")!
        let request:URLRequest = URLRequest(url: url)
        wvWeb.loadRequest(request)
        
    }



}

