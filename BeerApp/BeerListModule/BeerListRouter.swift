//
//  BeerListRouter.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import UIKit

final class BeerListRouter {
    class func createModule() -> UIViewController {
        let view = mainStoryboard.instantiateViewController(withIdentifier: "listBeer") as? BeerListViewController
        let presenter = BeerListPresenter()
        let interactor = BeerListInteractor()
        let router = BeerListRouter()
        
        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view!
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "BeerListView", bundle: Bundle.main)
    }
}

extension BeerListRouter: BeerListRouterProtocol{
    func goToDetailView(view: BeerListViewControllerProtocol, title: String?, nameImage: String?) {
        let newListView = BeerDetailRouter.createModule(title: title, image: nameImage)
        if let newView = view as? UIViewController{
            DispatchQueue.main.async {
                newView.navigationController?.pushViewController(newListView, animated: true)
            }
        }
        
        
    }
    
}
