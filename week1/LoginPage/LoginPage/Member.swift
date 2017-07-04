//
//  Member.swift
//  LoginPage
//
//  Created by Kangsoo on 03/07/2017.
//  Copyright © 2017 Dough. All rights reserved.
//

import Foundation

struct Member {
    var id: String
    var password: String
    
    func printInfo() {
        print("ID : \(id), PW : \(password)")
    }
}
