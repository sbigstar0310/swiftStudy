//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 성대규 on 2023/09/28.
//

import UIKit

class NewSegue : UIStoryboardSegue {
    override func perform() {
        let srcUVC = self.source
        let destUVC = self.destination
        
        UIView.transition(from: srcUVC.view,
                          to: destUVC.view,
                          duration: 2,
                          options: .transitionCurlDown)
    }
}
