//
//  RegController.swift
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
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Неправильные имя пользователя или пароль"))
        }
        print(body)
        
        let response = LoginResponse(result: 1,
                                     user: User(id_user: 123,
                                                user_login: "geekbrains",
                                                user_name: "John",
                                                user_lastname: "Doe"),
                                     errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func change(_ req: Request) throws -> EventLoopFuture<ChangeResponse> {
        guard let body = try? req.content.decode(ChangeRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Невозможно изменить указанные данные"))
        }
        print(body)
        
        let response = ChangeResponse(result: 1,
                                      errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.custom(code: 404, reasonPhrase: "Неудалось выйти из профиля"))
        }
        print(body)
        
        let response = LogoutResponse(result: 1,
                                      errorMessage: nil)
        
        return req.eventLoop.future(response)
    }
}
