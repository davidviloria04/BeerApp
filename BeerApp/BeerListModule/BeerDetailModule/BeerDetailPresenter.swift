//
//  BeerDetailPresenter.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation

class BeerDetailPresenter{
    public weak var view: BeerDetailViewControllerProtocol?
    public var interactor: BeerDetailInteractorProtocol?
    public var router: BeerDetailRouterProtocol?
    var beerDetail : [BeerDetailEntity]?

}

extension BeerDetailPresenter: BeerDetailPresenterProtocol{
    func viewDidLoad() {
        self.beerDetail = interactor?.getDatos()
        view?.getDatos(data: beerDetail ?? [])
    }
    
    
}
