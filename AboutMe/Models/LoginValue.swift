//
//  LoginValue.swift
//  AboutMe
//
//  Created by Zalman Zoteev on 15/05/2023.
//

struct LoginValue {
    let user: String
    let password: String
    
    static func getLoginValue() -> LoginValue {
        LoginValue(user: "1", password: "2")
    }
}
