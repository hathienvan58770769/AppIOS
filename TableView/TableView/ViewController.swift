//
//  ViewController.swift
//  TableView
//
//  Created by Van on 26/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var tblV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblV.dataSource = self
        tblV.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")
        if indexPath.row % 2 == 0 {
            cell?.textLabel?.text = "hà thiên vân"
        }else{
            cell?.textLabel?.text = "0905678919"
        }
        
        return cell!
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Danh bạ"
    }
    
    

  


}

