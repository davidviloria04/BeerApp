//
//  BeerListProtocols.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import UIKit

// MARK: Router -
protocol BeerListRouterProtocol: AnyObject {
    func goToDetailView(view: BeerListViewControllerProtocol, title: String?, nameImage: String?, indexPath: IndexPath)
}
// MARK: Presenter -
protocol BeerListPresenterProtocol: AnyObject {
    func goToDetailView(title: String?, nameImage: String?, indexPath: IndexPath)
    func viewDidLoad()
}

// MARK: Interactor -
protocol BeerListInteractorProtocol: AnyObject {
    func getDatos() ->[BeerListEntity]

}

// MARK: View -
protocol BeerListViewControllerProtocol: AnyObject {
    func getDatos(data : [BeerListEntity])
}
