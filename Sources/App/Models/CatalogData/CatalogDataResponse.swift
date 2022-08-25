//
//  CatalogDataResponse.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct CatalogDataResponse: Content {
    var page_number: Int?
    var products: [ListItem]?
    var result: Int?
    var errorMessage: String?
}
