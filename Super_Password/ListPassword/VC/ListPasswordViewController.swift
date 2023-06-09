//
//  ListPasswordViewController.swift
//  Super_Password
//
//  Created by Jadiê on 28/03/23.
//

import UIKit

class ListPasswordViewController: UIViewController {
    
    var listPasswordScreen: ListPasswordScreen?
    var passwordGenerator: PasswordGenerator?
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!

    override func loadView() {
        self.listPasswordScreen = ListPasswordScreen()
        self.view = self.listPasswordScreen
        
        passwordGenerator = PasswordGenerator(numberOfCharacters: self.numberOfCharacters, useLetters: self.useLetters, useNumbers: self.useNumbers, useCapitalLetters: self.useCapitalLetters, useSpecialCharacters: self.useSpecialCharacters)
        
        self.generatePasswords()
    }
    
    private func generatePasswords() {
        listPasswordScreen?.listTextView.scrollRangeToVisible(NSRange(location: 0, length: 0))
        listPasswordScreen?.listTextView.text = ""
        guard let passwords = passwordGenerator?.generate(total: numberOfPasswords) else { return } 
        for password in passwords {
            listPasswordScreen?.listTextView.text.append(password + "\n\n")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.listPasswordScreen?.delegate(delegate: self)
    }
 

}

extension ListPasswordViewController:ListPasswordScreenProtocol {
    func actionGenerateAgain() {
        self.generatePasswords()
    }
    
    
}
