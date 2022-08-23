//
//  GetGoodByIdResponse.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct GetGoodByIdResponse: Content {
    var result: Int
    var product_name: String
    var product_price: Int
    var product_description: String
    var errorMessage: String?
}
