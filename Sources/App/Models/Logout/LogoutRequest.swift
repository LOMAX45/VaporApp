//
//  LogoutRequest.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct LogoutRequest: Content {
    var id_user: Int
}
