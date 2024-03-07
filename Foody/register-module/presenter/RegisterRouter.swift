import Foundation

class RegisterRouter : PresenterToRouterRegisterProtocol
{
    static func createModule(ref: RegisterViewController) {
        ref.registerRresneterObject = RegisterPresenter()
        ref.registerRresneterObject?.registerInteractor = RegisterInteractor()
    }
}

