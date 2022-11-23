//
//  AppHelper.swift
//  RealtimeChat
//
//  Created by Izaan Saleem on 27/10/2022.
//

import Foundation

public class Validator {
    public static func isValid(email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
    public static func isValid(password: String) -> Bool {
        return (password.count < 8) ? false : true
    }
    
    public static func isValid(name: String) -> Bool {
        return (name.count < 2 || name.count > 33) ? false : true
    }
}
