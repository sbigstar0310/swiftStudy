//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 성대규 on 2023/09/28.
//

import UIKit

class ResultViewController : UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    @IBOutlet var resultUpdate: UILabel!
    @IBOutlet var resultInterval: UILabel!
    
    
    var paramEmail: String = ""
    var paramUpdate: Bool = false
    var ParamInterval: Double = 0
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신 안함")
        self.resultInterval.text = "\(Int(ParamInterval))분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
