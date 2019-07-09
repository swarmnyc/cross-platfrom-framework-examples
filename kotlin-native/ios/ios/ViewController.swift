//
//  ViewController.swift
//  ios
//
//  Created by Wade on 7/8/19.
//  Copyright © 2019 Wade. All rights reserved.
//

import UIKit
import SharedCode

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var greetingLabel: UILabel!
    

    @IBAction func didNameChanged(_ sender: UITextField) {
        let name = sender.text;
        if (name != nil) {
            if (name!.count == 0) {
                greetingLabel.isHidden = true
            } else {
                greetingLabel.isHidden = false
                greetingLabel.text = GreetingKt.greeting(name: name!)
            }
        }
    }
}

