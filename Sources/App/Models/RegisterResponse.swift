//
//  RegisterResponse.swift
//  
//
//  Created by Максим Лосев on 22.08.2022.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
