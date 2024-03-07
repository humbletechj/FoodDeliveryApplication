import Foundation
import Firebase


class RegisterInteractor : PresenterToInteractorRegisterProtocol
{
    func register(email: String, password: String) {
        let auth = Auth.auth()
        
        auth.createUser(withEmail: email, password: password)
        {
            (authresult, error) in
            if let user = authresult?.user
            {
                print(user)
            }else
            {
                print("User can't enter.")
            }
        }
        
    }
}
