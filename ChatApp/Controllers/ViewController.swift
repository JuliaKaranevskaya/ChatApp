//
//  ViewController.swift
//  ChatApp
//
//  Created by Юлия Караневская on 5/2/21.
//

import UIKit

class ViewController: UITableViewController {
 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
    }
    

    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
        
    }


}

