//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by 성대규 on 2023/09/28.
//

import UIKit

class FormViewController : UIViewController {
    
    
    
    @IBOutlet var email: UITextField?
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    
    @IBAction func onSubmit(_ sender: Any) {
        let ud = UserDefaults.standard
        
        if let email = self.email {
            ud.set(email.text, forKey: "email")
        } else {
            ud.set("", forKey: "email")
        }
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
