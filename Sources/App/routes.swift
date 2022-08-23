import Vapor

func routes(_ app: Application) throws {
    let controller = AuthController()
    let catalogController = CatalogController()
    app.post("register", use: controller.register)
    app.post("login", use: controller.login)
    app.post("change", use: controller.change)
    app.post("logout", use: controller.logout)
    app.post("catalogData", use: catalogController.catalogData)
    app.post("getGoodById", use:catalogController.getGoodById)
}

