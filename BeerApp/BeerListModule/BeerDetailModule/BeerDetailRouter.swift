//
//  BeerDetailRouter.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import UIKit

final class BeerDetailRouter {
    class func createModule(title: String?, image: String?) -> UIViewController {
        let view = mainStoryboard.instantiateViewController(withIdentifier: "detail") as? BeerDetailViewController
        let presenter = BeerDetailPresenter()
        let interactor = BeerDetailInteractor()
        let router = BeerDetailRouter()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        view?.titleDescription = title
        view?.imageDescription = image
        
        return view!
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "BeerListView", bundle: Bundle.main)
    }
}


extension BeerDetailRouter: BeerDetailRouterProtocol{
    
}
