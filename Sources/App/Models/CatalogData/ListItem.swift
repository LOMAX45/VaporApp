//
//  ListItem.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct ListItem: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
