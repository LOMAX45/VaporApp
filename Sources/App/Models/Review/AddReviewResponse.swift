//
//  File.swift
//  
//
//  Created by Максим Лосев on 26.08.2022.
//

import Vapor

struct AddReviewResponse:Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}
