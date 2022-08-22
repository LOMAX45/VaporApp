//
//  LoginRequest.swift
//  
//
//  Created by Максим Лосев on 22.08.2022.
//

import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
}
