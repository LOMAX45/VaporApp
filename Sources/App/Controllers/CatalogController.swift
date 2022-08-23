//
//  CatalogController.swift
//  
//
//  Created by Максим Лосев on 23.08.2022.
//

import Vapor

class CatalogController {
    
    func catalogData(_ req: Request) throws -> EventLoopFuture<[ListItem]> {
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Что-то пошло не так"))
        }
        print(body)
        
        let products = [
        ListItem(id_product: 123, product_name: "Ноутбук", price: 45600),
        ListItem(id_product: 456, product_name: "мышка", price: 1000)
        ]
        
        let response = products
        
        return req.eventLoop.future(response)
    }
    
    func getGoodById(_ req: Request) throws -> EventLoopFuture<GetGoodByIdResponse> {
        guard let body = try? req.content.decode(GetGoodByIdRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Товар не найден"))
        }
        print(body)
        
        let response = GetGoodByIdResponse(result: 1,
                                           product_name: "Название",
                                           product_price: 123,
                                           product_description: "Описание",
                                           errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
}
