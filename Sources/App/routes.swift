import Vapor

func routes(_ app: Application) throws {
    let controller = RegController()
    app.post("register", use: controller.register)
}
