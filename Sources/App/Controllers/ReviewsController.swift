//
//  ReviewsController.swift
//  
//
//  Created by Максим Лосев on 25.08.2022.
//

import Vapor

class ReviewsController {
    
    func reviewsData(_ req: Request) throws -> EventLoopFuture<ReviewsDataResponse> {
        guard let body = try? req.content.decode(ReviewsDataRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Что-то пошло не так"))
        }
        print(body)
        
        let reviews = [
            Review(id:00001, id_product: 12345, id_user: 123, text: "Отличная вещь!"),
            Review(id: 00002, id_product: 12345, id_user: 456, text: "Очень неудобное приспособление")
        ]
        
        let response = ReviewsDataResponse(result: 1,
                                           reviews: reviews,
                                           errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Что-то пошло не так"))
        }
        print(body)
        
        let response = AddReviewResponse(result: 1,
                                         userMessage: "Ваш отзыв был передан на модерацию",
                                         errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Что-то пошло не так"))
        }
        print(body)
        
        let response = RemoveReviewResponse(result: 1,
                                            errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
}
