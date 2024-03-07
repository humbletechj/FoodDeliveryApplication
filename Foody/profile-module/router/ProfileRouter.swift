import Foundation

class ProfileRouter : PresenterToRouterProfileProtocol
{
    static func createModule(ref: ProfileViewController) {
        
        let presenter = ProfilePresenter()
        ref.profilePresenterObject = presenter
        ref.profilePresenterObject?.profileInteractor = ProfileInteractor()
        ref.profilePresenterObject?.profileView = ref
        ref.profilePresenterObject?.profileInteractor?.profilePresenter = presenter
    }
    
}
