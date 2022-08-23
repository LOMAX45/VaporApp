//
//  ChangeResponse.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct ChangeResponse: Content {
    var result: Int
    var errorMessage: String?
}
