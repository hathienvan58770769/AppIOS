//
//  View2Controller.swift
//  TableView
//
//  Created by Van on 28/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    var  name:String = ""
    
    @IBOutlet weak var imgHinh2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgHinh2.image = UIImage(named: name)
    }


}
