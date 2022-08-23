//
//  ChangeRequest.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct ChangeRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
