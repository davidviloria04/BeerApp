//
//  LoginProtocols.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 29/06/22.
//

import Foundation
import UIKit


// MARK: Router -
protocol LoginRouterProtocol: AnyObject {
    func goToListBeer(view: LoginViewControllerProtocol)
}
// MARK: Presenter -
protocol LoginPresenterProtocol: AnyObject {
    func goToListBeer()
}

// MARK: Interactor -
protocol LoginInteractorProtocol: AnyObject {
    
}

// MARK: View -
protocol LoginViewControllerProtocol: AnyObject {
    
}
