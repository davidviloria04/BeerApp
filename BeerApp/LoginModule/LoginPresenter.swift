//
//  LoginPresenter.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 29/06/22.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {

    public weak var view:  LoginViewControllerProtocol?
    public var interactor:  LoginInteractorProtocol?
    public var router:  LoginRouterProtocol?
    
    
    func goToListBeer() {
        router?.goToListBeer(view: view!)
    }
}

