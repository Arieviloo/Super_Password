//
//  ListPasswordViewController.swift
//  Super_Password
//
//  Created by Jadiê on 28/03/23.
//

import UIKit

class ListPasswordViewController: UIViewController {
    
    var listPasswordScreen: ListPasswordScreen?

    override func loadView() {
        self.listPasswordScreen = ListPasswordScreen()
        self.view = self.listPasswordScreen
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
