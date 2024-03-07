import Foundation

class RegisterPresenter : ViewToPresenterRegisterProtocol
{
    var registerInteractor: PresenterToInteractorRegisterProtocol?
    
    func registerAll(email: String, password: String) {
        registerInteractor?.register(email: email, password: password)
    }
    
}
