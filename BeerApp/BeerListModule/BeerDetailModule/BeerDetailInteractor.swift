//
//  BeerDetailInteractor.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation

class BeerDetailInteractor{
    weak var presenter: BeerDetailPresenterProtocol?

}

extension BeerDetailInteractor: BeerDetailInteractorProtocol{
    func getDatos() -> [BeerDetailEntity] {
        var list = [BeerDetailEntity]()
        list.append(BeerDetailEntity(description: "Interstellar is a Red Rye IPA with spicy rye flavours from the malt and with great all-round spicy, fruity and earthy hop aromas from the use of Willamette and Amarillo", ph: "12", attenuationLevel: "12", firstBrewed: "23", tags: "Tag1"))
        list.append(BeerDetailEntity(description: "descrption11412", ph: "34", attenuationLevel: "13", firstBrewed: "231", tags: "tag2"))
        list.append(BeerDetailEntity(description: "descrption1", ph: "34", attenuationLevel: "14", firstBrewed: "42", tags: "tag3"))
        list.append(BeerDetailEntity(description: "descrption1414", ph: "", attenuationLevel: "15", firstBrewed: "123", tags: "tag4"))
        list.append(BeerDetailEntity(description: "descrption132", ph: "42", attenuationLevel: "16", firstBrewed: "32", tags: "Tag5"))
        list.append(BeerDetailEntity(description: "Interstellar is a Red Rye IPA with spicy rye flavours from the malt and with great all-round spicy, fruity and earthy hop aromas from the use of Willamette and Amarillo", ph: "", attenuationLevel: "17", firstBrewed: "123", tags: "tag6"))
        
        return list
    }
}
