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
        passwordTextfield.isSecureTextEntry = true
        configureTexfields()
        configureTapGesture()
    }
    
    @objc func login(_ sender: UIButton){
        presenter?.goToListBeer()
        view.endEditing(true)
    }
    
    private func configureTexfields(){
        usernameTextfield.delegate = self
        passwordTextfield.delegate = self
    }
    
    private func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ sender: UIButton!){
        view.endEditing(true)
    }
    
}

extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxCharacters = 8
        let currentString = (textField.text ?? "") as NSString
        let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxCharacters
    }
}


extension LoginViewController: LoginViewControllerProtocol{
    
}
