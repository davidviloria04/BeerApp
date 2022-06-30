//
//  BeerDetailEntity.swift
//  BeerApp
//
//  Created by David Viloria Ortega on 30/06/22.
//

import Foundation


public struct BeerDetailEntity {
    public var description: String?
    public var ph: String?
    public var attenuationLevel: String?
    public var firstBrewed: String?
    public var tags: String?
    
    init(description: String, ph: String, attenuationLevel: String, firstBrewed: String, tags: String?) {
        self.description = description
        self.ph = ph
        self.attenuationLevel = attenuationLevel
        self.firstBrewed = firstBrewed
        self.tags = tags
    }
}
