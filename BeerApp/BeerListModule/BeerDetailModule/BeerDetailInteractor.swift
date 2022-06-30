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
        list.append(BeerDetailEntity(description: "Interstellar is a Red Rye IPA with spicy rye flavours from the malt and with great all-round spicy, fruity and earthy hop aromas from the use of Willamette and Amarillo", ph: "1.2", attenuationLevel: "72", firstBrewed: "2015", tags: "Mi mama me mima"))
        list.append(BeerDetailEntity(description: "BrewDog vs Oedipus. One of a series of collaborations with European craft breweries, aimed at promoting engagement and market growth. This India pale lager has been brewed with Dutch brewers Oedipus", ph: "4.2", attenuationLevel: "85", firstBrewed: "2018", tags: "India Pale Lager"))
        list.append(BeerDetailEntity(description: "A Black Saison, brewed with oats and wheat for a silky mouthfeel, Spicy hops and Carafa Malt for colour, then aged in red wine barrels. On the nose there's cola, chocolate, coffee, mint humbug, warming oak, and spice.", ph: "3.4", attenuationLevel: "84", firstBrewed: "2015", tags: "Red Wine Barrel-Aged Imperial Black Saison"))
        list.append(BeerDetailEntity(description: "Una cerveza muy sabrosa", ph: "1.2", attenuationLevel: "65", firstBrewed: "2020", tags: "Coconut Vanilla Porter"))
        list.append(BeerDetailEntity(description: "Jack Hammer has been single handedly ripping it up for quite some time. Now, the definitive bitter and twisted IPA, has spawned four Hammer Head off-springs.", ph: "4.2", attenuationLevel: "96", firstBrewed: "1990", tags: "Our Ruthless IPA With A Dark Malt Twist"))
        list.append(BeerDetailEntity(description: "Interstellar is a Red Rye IPA with spicy rye flavours from the malt and with great all-round spicy, fruity and earthy hop aromas from the use of Willamette and Amarillo", ph: "4.5", attenuationLevel: "90", firstBrewed: "2010", tags: "Strong Ale With Honey And Spices"))
        
        return list
    }
}
