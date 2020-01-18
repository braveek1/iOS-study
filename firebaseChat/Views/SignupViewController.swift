//
//  SignupViewController.swift
//  firebaseChat
//
//  Created by Henry on 2020/01/18.
//  Copyright © 2020 tpsinc. All rights reserved.
//

import UIKit
import Firebase

class SignupViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func singupButtonTapped(_ sender: UIButton) {
        
        guard let email = emailTextField.text, !email.isEmpty else {
            print("peacekim:: user ID has error")
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            print("peacekim:: user ID has error")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            guard error != nil else { return }
            let alertController = UIAlertController(title: "Signup Success", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }

    }
    
    private func signin(){
        guard let email = emailTextField.text, !email.isEmpty else {
            print("peacekim:: user ID has error")
            return
        }
        
        guard let password = passwordTextField.text, !password.isEmpty else {
            print("peacekim:: user ID has error")
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            /// ...
        }
    }
    
}
