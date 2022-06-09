//
//  ViewController.swift
//  completeGreen
//
//  Created by BoMin on 2022/06/09.
//

import UIKit

class CompleteGreenViewController: UIViewController, UITextViewDelegate {
    
    let endTextView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.green
        setTextView()
        endTextView.fadeIn()
    }
    
    func setTextView() {
        endTextView.alpha = 0.0
        endTextView.delegate = self
        endTextView.center = view.center
        endTextView.text = "COMPLETE"
        endTextView.font = UIFont.systemFont(ofSize: 40)
        endTextView.textAlignment = .center
        endTextView.refreshControl?.contentVerticalAlignment = .center
        endTextView.textColor = .black
        endTextView.backgroundColor = UIColor.green
        self.view.addSubview(endTextView)
    }
}

extension UIView {
    func fadeIn(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
}
