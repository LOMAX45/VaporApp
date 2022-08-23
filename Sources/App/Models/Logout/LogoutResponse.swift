//
//  LogoutResponse.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct LogoutResponse: Content {
    var result: Int
    var errorMessage: String?
}
