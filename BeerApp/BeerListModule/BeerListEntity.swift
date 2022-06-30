//
//  BeerListEntity.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation

public struct BeerListEntity {
    public var beerPic: String?
    public var beerName: String?
    
    init(beerPic: String, beerName: String) {
        self.beerPic = beerPic
        self.beerName = beerName
    }
}
