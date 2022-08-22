//
//  AuthController.swift
//  
//
//  Created by Максим Лосев on 22.08.2022.
//

import Vapor

class AuthController {
    
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Что-то пошло не так"))
        }
        print(body)
        
        let response = RegisterResponse(result: 1,
                                        user_message: "Регистрация прошла успешно",
                                        error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
