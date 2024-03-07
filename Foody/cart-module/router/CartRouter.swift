import Foundation

class CartRouter : PresenterToRouterCartProtocol
{
    static func createModule(ref: CartViewController) {
        
        let presenter = CartPresenter()
        ref.cartPresenterObject = presenter
        ref.cartPresenterObject?.cartInteractor = CartInteractor()
        ref.cartPresenterObject?.cartView = ref
        ref.cartPresenterObject?.cartInteractor?.cartPresenter = presenter
        
    }
}
