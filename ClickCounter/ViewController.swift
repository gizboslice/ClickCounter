//
//  ViewController.swift
//  ClickCounter
//
//  Created by Andrew Ginzberg on 11/21/16.
//  Copyright © 2016 LOKI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var count2 = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
    

        
        // + Button
        let button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // - Button
        let button2 = UIButton()
        button2.frame = CGRect.init(x: 150, y: 300, width: 60, height: 60)
        button2.setTitle("-", for: .normal)
        button2.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(button2)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
    }
    
    

}

