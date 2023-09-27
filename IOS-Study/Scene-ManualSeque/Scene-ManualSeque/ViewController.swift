//
//  ViewController.swift
//  Scene-ManualSeque
//
//  Created by 성대규 on 2023/09/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func wind(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
}

