//
//  BeerListInteractor.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation
import SDWebImage


class BeerListInteractor{
    weak var presenter: BeerListPresenterProtocol?

}

extension BeerListInteractor: BeerListInteractorProtocol{
    func getDatos() -> [BeerListEntity] {
        var list = [BeerListEntity]()
        list.append(BeerListEntity(beerPic: "https://images.punkapi.com/v2/45.png", beerName: "The Physics"))
        list.append(BeerListEntity(beerPic: "https://images.punkapi.com/v2/keg.png", beerName: "Orange Blossom - B-Sides"))
        list.append(BeerListEntity(beerPic: "https://images.punkapi.com/v2/129.png", beerName: "Hinterland"))
        list.append(BeerListEntity(beerPic: "https://images.punkapi.com/v2/85.png", beerName: "Santa Paws"))
        list.append(BeerListEntity(beerPic: "https://images.punkapi.com/v2/229.png", beerName: "Rye Hammer"))
        list.append(BeerListEntity(beerPic: "https://images.punkapi.com/v2/191.png", beerName: "Interstellar"))
        
        return list
    }
    
    
    
    func sendDataToPresenter(datos: [BeerListEntity]){
        print("datos")
    }
    
    
}
