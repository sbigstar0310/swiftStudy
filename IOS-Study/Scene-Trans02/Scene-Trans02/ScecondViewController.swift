//
//  ScecondViewController.swift
//  Scene-Trans02
//
//  Created by 성대규 on 2023/09/26.
//

import UIKit
class SecondViewController : UIViewController {
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func back2(_ sender: Any) {
       _ = self.navigationController?.popViewController(animated: true)
    }
}
