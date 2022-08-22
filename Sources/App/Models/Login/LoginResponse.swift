//
//  LoginResponse.swift
//  
//
//  Created by Максим Лосев on 22.08.2022.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User?
    var errorMessage: String?
}
