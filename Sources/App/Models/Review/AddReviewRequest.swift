//
//  AddReviewRequest.swift
//  
//
//  Created by Максим Лосев on 26.08.2022.
//

import Vapor

struct AddReviewRequest: Content {
    var id: Int
    var id_product: Int
    var id_user: Int
    var text: String
}
