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
        self.optionScreen?.configTextFieldDelegate(delegate: self)
        self.optionScreen?.delegate(delegate: self)
    }
}

extension OptionViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension OptionViewController:OptionScreenProtocol {
    func actionGenerateButton() {
        let listPasswordVC = ListPasswordViewController()
        self.navigationController?.pushViewController(listPasswordVC, animated: true)
    }
    
    
}
