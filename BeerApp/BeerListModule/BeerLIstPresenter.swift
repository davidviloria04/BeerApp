//
//  BeerLIstPresenter.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import UIKit

class BeerListPresenter{
    public weak var view: BeerListViewControllerProtocol?
    public var interactor: BeerListInteractorProtocol?
    public var router: BeerListRouterProtocol?
    var beerList : [BeerListEntity]?
}

extension BeerListPresenter: BeerListPresenterProtocol{

    func viewDidLoad() {
        self.beerList = interactor?.getDatos()
        view?.getDatos(data: beerList ?? [])
    }
    
    func goToDetailView(title: String?, nameImage: String?) {
        router?.goToDetailView(view: view!, title: title, nameImage: nameImage)
    }
    
    
    
    
}
