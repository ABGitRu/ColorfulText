//
//  ViewController.swift
//  ColorfulText
//
//  Created by Mac on 14.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var helloWorldLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer()
    }
    
    private func timer() {
        Timer.scheduledTimer(
            timeInterval: 0.2,
            target: self,
            selector: #selector(changeColor),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc private func changeColor() {
        helloWorldLabel.textColor = .random()
    }
    
    
}
// MARK: - CGFloat & UIColor Extenstions
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red:   .random(),
            green: .random(),
            blue:  .random(),
            alpha: 1.0
        )
    }
}
