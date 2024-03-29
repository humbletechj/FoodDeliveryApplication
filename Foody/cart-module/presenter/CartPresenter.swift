import Foundation

class CartPresenter : ViewToPresenterCartProtocol
{
    var cartInteractor: PresenterToInteractorCartProtocol?
    
    var cartView: PresenterToViewCartProtocol?
    
    func showAllCart() {
        cartInteractor?.showCart()
    }
    func deleteAllCart(cart: FoodsDetail, kullanici_adi: String) {
        cartInteractor?.deleteCart(cart: cart, kullanici_adi: kullanici_adi)
    }
    func allDeleteItems(carts: Array<FoodsDetail>) {
        cartInteractor?.allDeleteItems(carts: carts)
    }
    func showCount() {
        cartInteractor?.showCount()
    }
    
    
}

extension CartPresenter : InteractorToPresenterCartProtocol
{
    func sendDataToPresenter(foodCount: Int) {
        cartView?.sendDataToView(foodCount: foodCount)
    }
    
 
    
    func sendDataToPresenter(cartList: Array<FoodsDetail>) {
        cartView?.sendDataToView(cartList: cartList)
    }
    
    
}
