//
//  ViewController.swift
//  demoprodelegate
//
//  Created by ROHIT DAS on 26/12/21.
//

import UIKit

class ViewController: UIViewController , DataPass {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//go to form//
    @IBAction func btnSaveClick(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "sec") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
//    func dataPassing(name: String, address: String, city: String) {
//        lblName.text=name
//        lblAddress.text=address
//        lblCity.text=city
//    }
    func data(object: [String : String]) {
        lblName.text=object["name"]
        lblAddress.text=object["address"]
        lblCity.text=object["city"]
    }
    
}

