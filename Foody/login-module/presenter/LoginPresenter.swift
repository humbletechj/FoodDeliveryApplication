import Foundation

class LoginPresenter : ViewToPresenterLoginProtocol
{
    var loginInteractor: PresenterToInteractorLoginProtocol?
    
    func loginAll(email: String, password: String) {
        loginInteractor?.login(email: email, password: password)
    }
    
}
