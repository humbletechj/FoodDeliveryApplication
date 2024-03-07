import Foundation

class LoginRouter : PresenterToRouter
{
    static func createModule(ref: ViewController) {
        ref.loginPresenterObject = LoginPresenter()
        ref.loginPresenterObject?.loginInteractor = LoginInteractor()
    }
    
}
