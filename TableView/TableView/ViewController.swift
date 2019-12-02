//
//  ViewController.swift
//  TableView
//
//  Created by Van on 26/11/2019.
//  Copyright © 2019 Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    let arrVN:Array<Array<String>> = [["Hà Nội", "Hà Giang","Lạng Sơn"],["Đà Nẵng"],["Sài Gòn","Đồng Nai"]]
    let header:Array<String> = ["Miền Bắc", "Miền Trung", "Miền Nam"]
    let arrImg:Array<Array<String>> = [["img1", "img2","img3"],["img4"],["img5","img6"]]
    @IBOutlet weak var tblV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblV.dataSource = self
        tblV.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVN[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! TableViewCell
//        if indexPath.row % 2 == 0 {
//            cell?.textLabel?.text = "hà thiên vân"
//        }else{
//            cell?.textLabel?.text = "0905678919"
//        }
        cell.lblTen.text = arrVN[indexPath.section][indexPath.row]
        cell.imgView.image = UIImage(named: arrImg[indexPath.section][indexPath.row])
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrVN.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header[section]
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let manhinhdich:View2Controller = storyboard?.instantiateViewController(withIdentifier: "mh2") as! View2Controller
        manhinhdich.name = arrImg[indexPath.section][indexPath.row]
        
        self.navigationController?.pushViewController(manhinhdich, animated: true)
    }
    

  


}

