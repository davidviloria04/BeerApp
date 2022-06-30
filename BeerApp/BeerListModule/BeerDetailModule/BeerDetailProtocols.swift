//
//  BeerDetailProtocols.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
protocol BeerDetailRouterProtocol: AnyObject {
    
}
// MARK: Presenter -
protocol BeerDetailPresenterProtocol: AnyObject {
    func viewDidLoad()
}

// MARK: Interactor -
protocol BeerDetailInteractorProtocol: AnyObject {
    func getDatos() ->[BeerDetailEntity]

}

// MARK: View -
protocol BeerDetailViewControllerProtocol: AnyObject {
    func getDatos(data : [BeerDetailEntity])
}
