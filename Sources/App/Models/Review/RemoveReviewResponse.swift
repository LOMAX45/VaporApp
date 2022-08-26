//
//  RemoveReviewResponse.swift
//  
//
//  Created by Максим Лосев on 26.08.2022.
//

import Vapor

struct RemoveReviewResponse: Content {
    var result: Int
    var errorMessage: String?
}
