//
//  LoginRouter.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 29/06/22.
//

import Foundation
import UIKit

final class LoginRouter {
    
    
    class func createModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "navigation")
        if let view = navController.children.first as? LoginViewController {
            let presenter = LoginPresenter()
            let interactor = LoginInteractor()
            let router = LoginRouter()
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            return navController
        }
        return UIViewController()
    }

    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "LoginView", bundle: Bundle.main)
    }
}

extension LoginRouter: LoginRouterProtocol{
    func goToListBeer(view: LoginViewControllerProtocol) {
        let newListView = BeerListRouter.createModule()
        if let newView = view as? UIViewController{
            
            DispatchQueue.main.async {
                newView.navigationController?.pushViewController(newListView, animated: true)
            }
        }

    }
}


