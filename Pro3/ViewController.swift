//
//  ViewController.swift
//  Pro3
//
//  Created by R95 on 02/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func RegistrationAction(_ sender: UIButton) {
        let navigate1 = storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController
        navigationController?.pushViewController(navigate1, animated: true)
    }
    
    
    @IBAction func SignupAction(_ sender: Any) {
        let naviget2 = storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        navigationController?.pushViewController(naviget2, animated: true)
    }
    
    
    @IBAction func LoginAction(_ sender: UIButton) {
        let naviget3 = storyboard?.instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(naviget3, animated: true)
    }
    
}

