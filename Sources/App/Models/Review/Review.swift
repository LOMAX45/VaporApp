//
//  File.swift
//  
//
//  Created by Максим Лосев on 25.08.2022.
//

import Vapor

struct Review: Content {
    var id: Int
    var id_product: Int
    var id_user: Int
    var text: String
}
