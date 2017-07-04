//
//  ViewController.swift
//  LoginPage
//
//  Created by Kangsoo on 03/07/2017.
//  Copyright © 2017 Dough. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 아래 두 줄은 Interface Builder에서 대신함
        //idTextField.delegate = self
        //passwordTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: UIResponder
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Hide keyboard when view is touched
        self.view.endEditing(true)
    }
    
    // MARK: Actions
    @IBAction func signInButton(_ sender: UIButton) {
        print("touch up inside - sign in")
        let tempMember = Member(id: idTextField.text!, password: passwordTextField.text!)
        tempMember.printInfo()
    }
    @IBAction func signUpButton(_ sender: UIButton) {
        print("touch up inside - sign up")
    }
}

