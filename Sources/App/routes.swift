import Vapor

func routes(_ app: Application) throws {
    let controller = AuthController()
    let catalogController = CatalogController()
    let reviewsController = ReviewsController()
    app.post("register", use: controller.register)
    app.post("login", use: controller.login)
    app.post("change", use: controller.change)
    app.post("logout", use: controller.logout)
    app.post("catalogData", use: catalogController.catalogData)
    app.post("getGoodById", use:catalogController.getGoodById)
    app.post("reviewsData", use: reviewsController.reviewsData)
    app.post("addReview", use: reviewsController.addReview)
    app.post("removeReview", use: reviewsController.removeReview)
}

