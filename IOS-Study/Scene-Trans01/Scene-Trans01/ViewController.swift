//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by 성대규 on 2023/09/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else { return }
        
        uvc.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        
        self.present(uvc, animated: true)
    }
}

