import Foundation

class FoodDetailRouter : PresenterToRouterFoodDetailProtocol
{
    static func createModule(ref: FoodsDetailViewController) {
        ref.foodDetailPresenterObject = FoodDetailPresenter()
        ref.foodDetailPresenterObject?.foodDetailInteractor = FoodDetailInteractor()
    }
}
