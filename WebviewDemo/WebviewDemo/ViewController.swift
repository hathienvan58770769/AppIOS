//
//  ViewController.swift
//  WebviewDemo
//
//  Created by Van on 21/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var historyWeb:Array<String> = Array<String>()
    var index:Int = 0
    @IBAction func btn_Back(_ sender: Any) {
        if historyWeb.count > 0 {
            index -= 1
            if index < 0 {
                index = 0
            }
            let url = URL(string : historyWeb[index])!
            let request:URLRequest = URLRequest(url: url)
            wvTrinhDuyet.loadRequest(request)
        }
    }
    @IBAction func btnt_Next(_ sender: Any) {
        if historyWeb.count > 0 {
            index += 1
            if index > historyWeb.count - 1 {
                index = historyWeb.count - 1
            }
            let url = URL(string : historyWeb[index])!
            let request:URLRequest = URLRequest(url: url)
            wvTrinhDuyet.loadRequest(request)
        }
    }
    @IBAction func btn_loading(_ sender: Any) {
        wvTrinhDuyet.reload()
    }
    @IBAction func btn_Search(_ sender: Any) {
        
        if let url = URL(string: txtUrl.text!){
            var link:String = txtUrl.text!
            if link.hasPrefix("http://") || link.hasPrefix("https://"){
                let request:URLRequest = URLRequest(url: url)
                 wvTrinhDuyet.loadRequest(request)
                historyWeb.append(link)
            }else{
                link = "http://\(link)"
                let url2:URL = URL(string: link)!
                let request:URLRequest = URLRequest(url: url2)
                wvTrinhDuyet.loadRequest(request)
                historyWeb.append(link)
            }
            
        }else{
            print("error 404")
        }
        
        
        
    }
    @IBOutlet weak var txtUrl: UITextField!
    @IBOutlet weak var wvTrinhDuyet: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

