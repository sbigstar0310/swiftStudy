//
//  ViewController.swift
//  SubmitValue-Back
//
//  Created by 성대규 on 2023/09/28.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        if let email = ad?.paramEmail {
            resultEmail.text = email
        }
        if let update = ad?.paramUpdate {
            resultUpdate.text = update == true ? "자동갱신" : "자동갱신 안됨"
        }
        if let interval = ad?.paramInterval {
            resultInterval.text = "\(Int(interval))분마다"
        }
    }
    
    @IBAction func showValue(_ sender: UIButton) {
        let ud = UserDefaults.standard
        
        if let email = ud.string(forKey: "email") {
            resultEmail.text = email
        }
        let update = ud.bool(forKey: "isUpdate")
        resultUpdate.text = update == true ? "Yes" : "No"
        
        let interval = ud.double(forKey: "interval")
        resultInterval.text = "\(Int(interval))분마다"
    }
}

