//
//  LoginViewController.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 29/06/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
    
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var presenter: LoginPresenterProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.addTarget(self, action: #selector(self.login(_:)), for: .touchUpInside)
        //evaluatingEnableButton()
    }
    
    func disableButton(){
        loginButton.backgroundColor = UIColor.gray
        loginButton.isEnabled = false
    }
    
    func enableButton(){
        loginButton.backgroundColor = UIColor.blue
        loginButton.isEnabled = true
    }
    
    func evaluatingEnableButton(){
        if usernameTextfield.text?.count == 2 && passwordTextfield.text?.count == 2{
            enableButton()
        }else{
            disableButton()
        }
        
    }
    
    @objc func login(_ sender: UIButton){
        presenter?.goToListBeer()
    }
    
}


extension LoginViewController: LoginViewControllerProtocol{
    
}
