import Foundation

class HomeRouter : PresenterToRouterHomePageProtocol
{
    static func createModule(ref: HomePageViewController) {
        
        let pressenter = HomePresenter()
        ref.homepagePresenterOnject = pressenter
        ref.homepagePresenterOnject?.homepageInteractor = HomeInteractor()
        ref.homepagePresenterOnject?.homepageView = ref
        ref.homepagePresenterOnject?.homepageInteractor?.homepagePresenter = pressenter
    }
}
