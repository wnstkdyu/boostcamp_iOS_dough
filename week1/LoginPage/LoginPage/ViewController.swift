//
//  ViewController.swift
//  LoginPage
//
//  Created by Kangsoo on 03/07/2017.
//  Copyright © 2017 Dough. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

