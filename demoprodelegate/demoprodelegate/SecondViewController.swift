//
//  SecondViewController.swift
//  demoprodelegate
//
//  Created by ROHIT DAS on 26/12/21.
//

import UIKit
protocol DataPass {
    //func dataPassing(name: String, address: String, city: String)
    func data(object:[String:String])
}

class SecondViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    var delegate: DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnSaveClick(_ sender: Any) {
        if txtName.text == ""{
            alert(title: "enter name", mes: "", delegate: self)
        }
        else if txtAddress.text == ""{
            alert(title: "enter address", mes: "", delegate: self)
            }
        else if txtCity.text == ""{
            alert(title: "enter city", mes: "", delegate: self)
            }
        else{
            //delegate.dataPassing(name: txtName.text!, address: txtAddress.text!, city: txtCity.text!)
            let dic:[String:String] = ["name":txtName.text!,"address":txtAddress.text!,"city":txtCity.text!]
            delegate.data(object: dic)
        }

    }
    func alert(title:String,mes:String,delegate:AnyObject){
          // create the alert
        
            let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

          // add an action (button)
        
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                
               

                // show the alert
                self.present(alert, animated: true, completion: nil)
        

        
    }
}
