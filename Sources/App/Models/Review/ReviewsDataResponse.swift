//
//  ReviewsDataResponse.swift
//  
//
//  Created by Максим Лосев on 25.08.2022.
//

import Vapor

struct ReviewsDataResponse: Content {
    var result: Int
    var reviews: [Review]
    var errorMessage: String?
}
