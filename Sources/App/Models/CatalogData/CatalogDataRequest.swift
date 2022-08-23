//
//  CatalogDataRequest.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

struct CatalogDataRequest: Content {
    var page_number: Int
    var id_category: Int
}
