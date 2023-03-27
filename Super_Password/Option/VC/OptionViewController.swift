//
//  ViewController.swift
//  Super_Password
//
//  Created by Jadiê on 27/03/23.
//

import UIKit

class OptionViewController: UIViewController {
    var optionScreen: OptionScreen?
    
    override func loadView() {
        self.optionScreen = OptionScreen()
        self.view = optionScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        
    }


}

